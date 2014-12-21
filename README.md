##Getting and Cleaning Data Course Project
=======================

###Human Activity Recognition Using Smartphones Data Set
This is the course project for the Getting and Cleaning Data course from Coursera.org. The goal of this project is to create a tidy data set from a smartphone accelerometer data set tracking human activity, and to summarize the data in a specific way. The data can be downloaded from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This script run.analysis.R cleans the downloadeded dataset and creates a seperate tidy data set with the average of each variable for each activity and each subject. The script cleans and analyzes the data in the following steps:
* Read the unzipped smartphone accelerometer data set (both the training set and the test set) into data frames. 
* Name each column with descriptive variable names according to the feature.txt .
* Assign subject IDs and activity labels to each observation.
* Substitute the activity labels with descriptive activity names.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* summarise the data set with the average of each variable for each activity and each subject

The output of the script is a text file named "mean_activity_subject.txt"

