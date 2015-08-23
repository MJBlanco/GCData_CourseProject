# GCData_CourseProject
Getting &amp; Cleaning Data Course Project

----------

This repository contains two files in order to analyze the data from the website <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones> that corresponds to Human Activity Recognition Using Smartphones Dataset.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, it was captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

* run_analysis.R

The run_analysis function contains only one argument that is the directory in which the files downloaded from the following link <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> are saved. **When downloading the files a folder with the name UCI HAR Dataset will be created, so it is important that the working directory is set to that folder before using the run_analysis function.** 

By the use of the script run_analysis.R the two data sets (training data and test data) are merged in order to obtain one data set and then get a data set with the mean of some specific measurements.

Then, the data sets for all volunteers are merged by the use of cbind and rbind functions. Also the names of columns are added in order to identify each variable correctly.

With the run_analysis function only the columns with the measurements on the mean and standard deviation for each measurement are selected. To accomplish this the run_analysis.R script includes the installation of the dplyr package in order to use the formula "select".

After that, the descriptive name for each activity is assigned in order to avoid numerical codes.

Lastly a summary by activity and subject is created through the use of group_by, calculating the mean of the measurements selected (mean and standard deviation). Finally a .txt file with the resulting tidy data set is saved in the working directory. The name of the resulting file is CourseProject_final.txt, which will be shown in your RStudio.

* CodeBook.md

This file contains an explanation of the variables that are included in the CourseProject_final.txt document obtained by the use of the run_analysis.R function.

The descripction of files included on the original download from the link above is included and how this files were used in order to obtain the final dataset. 

Information regarding the measurments performed in the experiment has been added, as a reference to the features_info file available in the zip downloaded.

Finally a detail of all the variables included in the final data set has been added for specific references.