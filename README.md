# CourseraDataCleaning
Programming assignment for Coursera/JHU Data Science course


The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The data set in question contains data from the accelerometer and gyrometer sensors from a phone worn at the waist by 30 respondents. Full description found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Sources
Raw dataset obtained from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# Goals and criteria
The goal is to prepare tidy data that can be used for later analysis and needs to meet the following criteria: 

1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

# Files
README.md: this file
CodeBook.md: Description of steps in data preparation performed in run_analysis.R
run_analysis.R: R-script performing data preparation. It merges the training and testing data, selects only the key, mean and standard deviation, adds labels to values and cleans up the column names.
FinalData.txt: Export of the final data table.
