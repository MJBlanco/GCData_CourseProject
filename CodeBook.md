#DATA DICTIONARY#
# Samsung Accelerometers Data#


----------

### Original Data set

The original data set downloaded from the link indicated in the README.md file includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.  
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

### Data Process

The sets to be merged are X_train, X_test, y_train, y_test, subject_train and subject_test. Labels for each measurement are added from the features files. 

In order to select only measurements on mean and standarde deviation it is necessary to remove duplicate columns and then apply the select function. As this is a function of the dplyr package, the run_analysis script already includes the installation of the package and also calls it.

Then the activity labels are added in order to replace the activity codes (number from 1 to 6) with the activity_labels of the original data set.

The final data set summarizes the mean of the measurements selected by activity and by subject, obtaining a data frame of 180 rows (plus header) and 88 columns. The resulting file is saved in the UCI HAR Dataset folder of the working directory by the name CourseProject_final.txt.

### Variables 

With regards to the features selected for the final database please see the extract of the features_info.txt file:

*"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.* 

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).* 

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).* 

*These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

- *tBodyAcc-XYZ*
- *tGravityAcc-XYZ*
- *tBodyAccJerk-XYZ*
- *tBodyGyro-XYZ*
- *tBodyGyroJerk-XYZ*
- *tBodyAccMag*
- *tGravityAccMag*
- *tBodyAccJerkMag*
- *tBodyGyroMag*
- *tBodyGyroJerkMag*
- *fBodyAcc-XYZ*
- *fBodyAccJerk-XYZ8*
- *fBodyGyro-XYZ*
- *fBodyAccMag*
- *fBodyAccJerkMag*
- *fBodyGyroMag*
- *fBodyGyroJerkMag*

*The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation"*

The variables included in the CourseProject_final.txt file are listed below.

#### Identifier

•	activity 18 | Types of Activities

•	subject 2 | |ID of subject | 1 .. 30 Unique identifier per subject

#### Measurement

•	tBodyAcc-mean()-X | mean of time body accelerometer signal - axial sign X

•	tBodyAcc-mean()-Y | mean of time body accelerometer signal - axial sign Y

•	tBodyAcc-mean()-Z | mean of time body accelerometer signal - axial sign Z

•	tGravityAcc-mean()-X | mean of time gravity accelerometer signal - axial sign X

•	tGravityAcc-mean()-Y | mean of time gravity accelerometer signal - axial sign Y

•	tGravityAcc-mean()-Z | mean of time gravity accelerometer signal - axial sign Z

•	tBodyAccJerk-mean()-X | mean of time body accelerometer signal derived in time - axial sign X

•	tBodyAccJerk-mean()-Y | mean of time body accelerometer signal derived in time - axial sign Y

•	tBodyAccJerk-mean()-Z | mean of time body accelerometer signal derived in time - axial sign Z

•	tBodyGyro-mean()-X | mean of time body gyroscope signal - axial sign X

•	tBodyGyro-mean()-Y | mean of time body gyroscope signal - axial sign Y

•	tBodyGyro-mean()-Z | mean of time body gyroscope signal - axial sign Z

•	tBodyGyroJerk-mean()-X | mean of time body gyroscope signal derived in time - axial sign X

•	tBodyGyroJerk-mean()-Y | mean of time body gyroscope signal derived in time - axial sign Y

•	tBodyGyroJerk-mean()-Z | mean of time body gyroscope signal derived in time - axial sign Z

•	tBodyAccMag-mean() | mean of time body accelerometer signal Euclidean norm

•	tGravityAccMag-mean() | mean of time gravity accelerometer signal Euclidean norm

•	tBodyAccJerkMag-mean() | mean of time body accelerometer signal derived in time Euclidean norm

•	tBodyGyroMag-mean() | mean of time body gyroscope signal Euclidean norm

•	tBodyGyroJerkMag-mean() | mean of time body gyroscope signal derived in time Euclidean norm

•	fBodyAcc-mean()-X | mean of frequency body accelerometer signal - axial sign X

•	fBodyAcc-mean()-Y | mean of frequency body accelerometer signal - axial sign Y

•	fBodyAcc-mean()-Z | mean of frequency body accelerometer signal - axial sign Z

•	fBodyAcc-meanFreq()-X | mean frequency of frequency body accelerometer signal - axial sign X

•	fBodyAcc-meanFreq()-Y | mean frequency of frequency body accelerometer signal - axial sign Y

•	fBodyAcc-meanFreq()-Z | mean frequency of frequency body accelerometer signal - axial sign Z

•	fBodyAccJerk-mean()-X | mean of frequency body accelerometer signal derived in time - axial sign X

•	fBodyAccJerk-mean()-Y | mean of frequency body accelerometer signal derived in time - axial sign Y

•	fBodyAccJerk-mean()-Z | mean of frequency body accelerometer signal derived in time - axial sign Z

•	fBodyAccJerk-meanFreq()-X | mean frequency of frequency body accelerometer signal derived in time - axial sign X

•	fBodyAccJerk-meanFreq()-Y | mean frequency of frequency body accelerometer signal derived in time - axial sign Y

•	fBodyAccJerk-meanFreq()-Z | mean frequency of frequency body accelerometer signal derived in time - axial sign Z

•	fBodyGyro-mean()-X | mean of frequency body gyroscope signal - axial sign X

•	fBodyGyro-mean()-Y | mean of frequency body gyroscope signal - axial sign Y

•	fBodyGyro-mean()-Z | mean of frequency body gyroscope signal - axial sign Z

•	fBodyGyro-meanFreq()-X | mean frequency of frequency body gyroscope signal - axial sign X

•	fBodyGyro-meanFreq()-Y | mean frequency of frequency body gyroscope signal - axial sign Y

•	fBodyGyro-meanFreq()-Z | mean frequency of frequency body gyroscope signal - axial sign Z

•	fBodyAccMag-mean() | mean of frequency body accelerometer signal Euclidean norm

•	fBodyAccMag-meanFreq() | mean frecuency of frequency body accelerometer signal Euclidean norm

•	fBodyBodyAccJerkMag-mean() | mean of frequency body accelerometer signal derived in time Euclidean norm

•	fBodyBodyAccJerkMag-meanFreq() | mean frecuency of frequency body accelerometer signal derived in time Euclidean norm

•	fBodyBodyGyroMag-mean() | mean of frequency body gyroscope signal Euclidean norm

•	fBodyBodyGyroMag-meanFreq() | mean frecuency of frequency body gyroscope signal Euclidean norm

•	fBodyBodyGyroJerkMag-mean() | mean of frequency body gyroscope signal derived in time Euclidean norm

•	fBodyBodyGyroJerkMag-meanFreq() | mean frecuency of frequency body gyroscope signal derived in time Euclidean norm

•	angle(tBodyAccMean,gravity) | angle between tBodyAccMean and gravity

•	angle(tBodyAccJerkMean),gravityMean) | angle between tBodyAccJerkMean and gravityMean

•	angle(tBodyGyroMean,gravityMean) | angle between tBodyGyroMean and gravityMean

•	angle(tBodyGyroJerkMean,gravityMean) | angle between tBodyGyroJerkMean and gravityMean

•	angle(X,gravityMean) | angle between X and gravityMean

•	angle(Y,gravityMean) | angle between Y and gravityMean

•	angle(Z,gravityMean) | angle between Z and gravityMean

•	tBodyAcc-std()-X | std of time body accelerometer signal - axial sign X

•	tBodyAcc-std()-Y | std of time body accelerometer signal - axial sign Y

•	tBodyAcc-std()-Z | std of time body accelerometer signal - axial sign Z

•	tGravityAcc-std()-X | std of time gravity accelerometer signal - axial sign X

•	tGravityAcc-std()-Y | std of time gravity accelerometer signal - axial sign Y

•	tGravityAcc-std()-Z | std of time gravity accelerometer signal - axial sign Z

•	tBodyAccJerk-std()-X | std of time body accelerometer signal derived in time - axial sign X

•	tBodyAccJerk-std()-Y | std of time body accelerometer signal derived in time - axial sign Y

•	tBodyAccJerk-std()-Z | std of time body accelerometer signal derived in time - axial sign Z

•	tBodyGyro-std()-X | std of time body gyroscope signal - axial sign X

•	tBodyGyro-std()-Y | std of time body gyroscope signal - axial sign Y

•	tBodyGyro-std()-Z | std of time body gyroscope signal - axial sign Z

•	tBodyGyroJerk-std()-X | std of time body gyroscope signal derived in time - axial sign X

•	tBodyGyroJerk-std()-Y | std of time body gyroscope signal derived in time - axial sign Y

•	tBodyGyroJerk-std()-Z | std of time body gyroscope signal derived in time - axial sign Z

•	tBodyAccMag-std() | std of time body accelerometer signal Euclidean norm

•	tGravityAccMag-std() | std of time gravity accelerometer signal Euclidean norm

•	tBodyAccJerkMag-std() | std of time body accelerometer signal derived in time Euclidean norm

•	tBodyGyroMag-std() | std of time body gyroscope signal Euclidean norm

•	tBodyGyroJerkMag-std() | std of time body gyroscope signal derived in time Euclidean norm

•	fBodyAcc-std()-X | std of frequency body accelerometer signal - axial sign X

•	fBodyAcc-std()-Y | std of frequency body accelerometer signal - axial sign Y

•	fBodyAcc-std()-Z | std of frequency body accelerometer signal - axial sign Z

•	fBodyAccJerk-std()-X | std of frequency body accelerometer signal derived in time - axial sign X

•	fBodyAccJerk-std()-Y | std of frequency body accelerometer signal derived in time - axial sign Y

•	fBodyAccJerk-std()-Z | std of frequency body accelerometer signal derived in time - axial sign Z

•	fBodyGyro-std()-X | std of frequency body gyroscope signal - axial sign X

•	fBodyGyro-std()-Y | std of frequency body gyroscope signal - axial sign Y

•	fBodyGyro-std()-Z | std of frequency body gyroscope signal - axial sign Z

•	fBodyAccMag-std() | std of frequency body accelerometer signal Euclidean norm

•	fBodyBodyAccJerkMag-std() | std of frequency body accelerometer signal derived in time Euclidean norm

•	fBodyBodyGyroMag-std() | std of frequency body gyroscope signal Euclidean norm

•	fBodyBodyGyroJerkMag-std() | std of frequency body gyroscope signal derived in time Euclidean norm
