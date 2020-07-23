## Goals:
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Dataset citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
## Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
## International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Loading packages:
install.packages("tidyverse")
library(tidyverse)

## Check if file has already been downloaded and unzipped, if not -> do so
if (!file.exists("UCI HAR data.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UCI HAR data.zip")
}

if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

## Reading features data
features <- read.table("UCI HAR Dataset/features.txt", header = F)
colnames(features) <- c("featureId", "feature")

## Reading activity labels
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = F)
colnames(activitylabels) <- c("value", "activity")


## Reading training + testing data + adding column names
## Training subjects
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", header = F)
colnames(trainsubjects) <- "subjectId"

## Training activities
trainactivity <- read.table("UCI HAR Dataset/train/y_train.txt", header = F)
colnames(trainactivity) <- "activity"

## Training set
trainset <- read.table("UCI HAR Dataset/train/X_train.txt", header = F)
colnames(trainset) <- features[,2]

## Testing subjects
testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", header = F)
colnames(testsubjects) <- "subjectId"

## Testing activities
testactivity <- read.table("UCI HAR Dataset/test/y_test.txt", header = F)
colnames(testactivity) <- "activity"

## Testing set
testset <- read.table("UCI HAR Dataset/test/X_test.txt", header = F)
colnames(testset) <- features[,2]



## Putting training set together:
trainmerge <- cbind(trainsubjects, trainactivity, trainset)

## Putting testing set together:
testmerge <- cbind(testsubjects, testactivity, testset)

## Putting training and testing set together:
totalmerge <- rbind(trainmerge, testmerge)

## Tidying data

## Only selecting mean and standard deviation values
totaltidy <- totalmerge %>% select(subjectId, activity, contains("mean"), contains("std"))

## Making column names more readable
names(totaltidy)<-gsub("^t", "Time", names(totaltidy))
names(totaltidy)<-gsub("^f", "Frequency", names(totaltidy))
names(totaltidy)<-gsub("BodyBody", "Body", names(totaltidy))
names(totaltidy)<-gsub("[()])", "", names(totaltidy))

## Adding labels to activity values
totaltidy$activity <- activitylabels[totaltidy$activity, 2]

## Writing to .txt
write.table(totaltidy, "TidyData.txt", row.name=F)

