# Data preparation

In order to create a tidy dataset, the run_analysis.R script performs the following steps. These are also annoted in the script file.

1) Merging the training and data files
2) Selecting the Subject ID and Activity columns and columns that contain mean or standard deviation values.
3) Cleaning up column names for improved legibility
4) Changing values in Activity column to descriptive labels
5) Writing the final tidy dataset to TidyData.txt

# Data description

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Full description found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

All variables:

 [1] "subjectId"                            "activity"                             "TimeBodyAcc-mean-X"                  
 [4] "TimeBodyAcc-mean-Y"                   "TimeBodyAcc-mean-Z"                   "TimeGravityAcc-mean-X"               
 [7] "TimeGravityAcc-mean-Y"                "TimeGravityAcc-mean-Z"                "TimeBodyAccJerk-mean-X"              
[10] "TimeBodyAccJerk-mean-Y"               "TimeBodyAccJerk-mean-Z"               "TimeBodyGyro-mean-X"                 
[13] "TimeBodyGyro-mean-Y"                  "TimeBodyGyro-mean-Z"                  "TimeBodyGyroJerk-mean-X"             
[16] "TimeBodyGyroJerk-mean-Y"              "TimeBodyGyroJerk-mean-Z"              "TimeBodyAccMag-mean"                 
[19] "TimeGravityAccMag-mean"               "TimeBodyAccJerkMag-mean"              "TimeBodyGyroMag-mean"                
[22] "TimeBodyGyroJerkMag-mean"             "FrequencyBodyAcc-mean-X"              "FrequencyBodyAcc-mean-Y"             
[25] "FrequencyBodyAcc-mean-Z"              "FrequencyBodyAcc-meanFreq-X"          "FrequencyBodyAcc-meanFreq-Y"         
[28] "FrequencyBodyAcc-meanFreq-Z"          "FrequencyBodyAccJerk-mean-X"          "FrequencyBodyAccJerk-mean-Y"         
[31] "FrequencyBodyAccJerk-mean-Z"          "FrequencyBodyAccJerk-meanFreq-X"      "FrequencyBodyAccJerk-meanFreq-Y"     
[34] "FrequencyBodyAccJerk-meanFreq-Z"      "FrequencyBodyGyro-mean-X"             "FrequencyBodyGyro-mean-Y"            
[37] "FrequencyBodyGyro-mean-Z"             "FrequencyBodyGyro-meanFreq-X"         "FrequencyBodyGyro-meanFreq-Y"        
[40] "FrequencyBodyGyro-meanFreq-Z"         "FrequencyBodyAccMag-mean"             "FrequencyBodyAccMag-meanFreq"        
[43] "FrequencyBodyAccJerkMag-mean"         "FrequencyBodyAccJerkMag-meanFreq"     "FrequencyBodyGyroMag-mean"           
[46] "FrequencyBodyGyroMag-meanFreq"        "FrequencyBodyGyroJerkMag-mean"        "FrequencyBodyGyroJerkMag-meanFreq"   
[49] "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[52] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[55] "angle(Z,gravityMean)"                 "TimeBodyAcc-std-X"                    "TimeBodyAcc-std-Y"                   
[58] "TimeBodyAcc-std-Z"                    "TimeGravityAcc-std-X"                 "TimeGravityAcc-std-Y"                
[61] "TimeGravityAcc-std-Z"                 "TimeBodyAccJerk-std-X"                "TimeBodyAccJerk-std-Y"               
[64] "TimeBodyAccJerk-std-Z"                "TimeBodyGyro-std-X"                   "TimeBodyGyro-std-Y"                  
[67] "TimeBodyGyro-std-Z"                   "TimeBodyGyroJerk-std-X"               "TimeBodyGyroJerk-std-Y"              
[70] "TimeBodyGyroJerk-std-Z"               "TimeBodyAccMag-std"                   "TimeGravityAccMag-std"               
[73] "TimeBodyAccJerkMag-std"               "TimeBodyGyroMag-std"                  "TimeBodyGyroJerkMag-std"             
[76] "FrequencyBodyAcc-std-X"               "FrequencyBodyAcc-std-Y"               "FrequencyBodyAcc-std-Z"              
[79] "FrequencyBodyAccJerk-std-X"           "FrequencyBodyAccJerk-std-Y"           "FrequencyBodyAccJerk-std-Z"          
[82] "FrequencyBodyGyro-std-X"              "FrequencyBodyGyro-std-Y"              "FrequencyBodyGyro-std-Z"             
[85] "FrequencyBodyAccMag-std"              "FrequencyBodyAccJerkMag-std"          "FrequencyBodyGyroMag-std"            
[88] "FrequencyBodyGyroJerkMag-std"        

# Sources
* Raw dataset obtained from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
