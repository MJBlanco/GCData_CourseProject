# GCData_CourseProject
Getting &amp; Cleaning Data Course Project

----------

This repository contains two files in order to analyze the data from the website <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones> that corresponds to Human Activity Recognition Using Smartphones Dataset.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, it was captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

By the use of the script run_analysis.R the two data sets (training data and test data) are merged in order to obtain one data set and then get a data set with the mean of some specific measurements.

The run_analysis function contains only one variable that is the directory in which the files downloaded from the following link <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> are saved. 

Then, the data sets for all volunteers are merged by the use of cbind and rbind functions. Also the names of columns are added in order to identify each variable correctly.

With the run_analysis function only the columns with the measurements on the mean and standard deviation for each measurement are selected. To accomplish this the run_analysis.R script includes the installation of the dplyr package in order to use the formula "select".

After that, the descriptive name for each activity is assigned in order to avoid numerical codes.

Lastly a summary by activity and subject is created through the use of group_by, calculating the mean of the measurements selected (mean and standard deviation). Finally a .txt file with the resulting tidy data set is saved in the working directory. The name of the resulting file is CourseProject_final.txt.