##The codebook for run_analysis.R

The raw data set can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip . The run_analysis.R reads the text files after the zip fil is unzipped into the working directory.

The following data frames contain the raw data read from the text files
* The variable "features" represents the descriptive variable names for the smartphone dataset.
* "activityLabels" represents the descriptive activity names for each activity label 1 to 6. 
* "train" and "test" contain the human activity data collected from smartphone accelerometers. The column names represent the specific measurements. Each row is a separate observation. 
* "trainSub" and "testSub" contain the subject IDs for each observation in the "train" and "test" data frames. 
* "trainLabel" and "testLabel" contain the activity labels for each observation in the "train" and "test" data frames. 

Below are the transformations made by the script.
* "test2" and "train2" assign the subject ID and activity label to each measurement. 
* "test3" and "train3" add the descriptive activity names for each activity label.
* "allData" merge the test set and the training set into one data frame. "allData2" remove the activity label column.
* "allData_sorted" sorts the data by subject ID and activity names.
* "dataMeanStd" extracts only the measurements on the mean and standard deviation for each measurement. 
* "by_activity_subject" groups the data by activity and subject ID, and "mean_activity_subject" produces the average of each variable for each activity and each subject. 
* The final output is the data frame "mean_activity_subject" and is written into a text file named "mean_activity_subject.txt". 

In the data frame "mean_activity_subject", the first column "activity" contains 6 different activity types: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The second column "subject" contains the ID for each subject. The rest columns represent the average of each variable for each activity and each subject. 

