## This script will be used to analyze the files obtained from data collected from 
## the accelerometers from the Samsung Galaxy S smartphone
## (see a full description http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

# Set working directory
  setwd("./UCI HAR Dataset")
  
# Read the files that have been downloaded into the directory
  subtest <- read.table("./test/subject_test.txt")
  Xtest <- read.table("./test/X_test.txt")
  ytest <- read.table("./test/y_test.txt")
  subtrain <- read.table("./train/subject_train.txt")
  Xtrain <- read.table("./train/X_train.txt")
  ytrain <- read.table("./train/y_train.txt")
  
# Add column name to activity codes files
  colnames(ytrain) <- c("activity")
  colnames(ytest) <- c("activity")
  
# Add column name to subject codes files
  colnames(subtest) <- c("subject")
  colnames(subtrain) <- c("subject")

# Assign column names to test and training sets
  
  ## 1) read the file that contains the names
  features <- read.table("./features.txt")
  
  ## 2) take the second column which is the one with names
  featuresnames <- features$V2
  
  ## 3) assign column names to test and training sets
  colnames(Xtrain) <- featuresnames
  colnames(Xtest) <- featuresnames
  
## Merge the train and test sets
  
  ## 1) merge the train set
  train <- cbind(subtrain, ytrain, Xtrain)
  
  ## 2) merge the test set
  test <- cbind(subtest, ytest, Xtest)
  
  ## 3) merge the previous two sets
  data <- rbind(train, test)
  
## Extract the measurement on the mean and standard deviation for each measurement
  
  ## 1) remove columns with duplicate names
  data <- data[ , !duplicated(colnames(data))]
  
  ## 2) install dplyr package
  install.packages("dplyr")
  
  ## 3) upload dplyr package
  library(dplyr)
  
  ## 4) select columns only with mean and std measurements
  set <- select(data, subject, activity, contains("mean"), contains("std"))
  
## Use descriptive activity names to replace activity codes 
  
  ## 1) read activities file which contains the activity description per code
  activities <- read.table("./activity_labels.txt")
  
  ## 2) replace activity codes with activity description
  set$activity <- factor(set$activity,activities$V1,activities$V2)
  
## Create a tidy data set with the average of each variable for each activity
## and each subject
  
  ## 1) create the groups to be grouped by
  groupset <- group_by(set, activity, subject)
  
  ## 2) summarize the data by the previous groups and establish the function
  final <- summarise_each(groupset, funs(mean))
  
## Create a txt file with the summarized data set
  write.table(final, file ="./CourseProject_final.txt", 
              append = FALSE, row.names = FALSE)
  
## Showing the result
  CourseProject_final <- read.table("./CourseProject_final.txt", header = TRUE)
  View(CourseProject_final)

