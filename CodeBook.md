# Code Book

## Tidy data obtained from the "Human Activity Recognition Using Smartphones Dataset"

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

More details can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The tidy data set was obtained by merging the data sets of Training and Test subjects using the script run_analysis.R.

The script run_analysis.R load al relevant data sets and rearange then on a silgle table. Then calculate the Average value of each variable goruping by Subject and Activity.

## Variables's description

 The prefix 't' denote time

 The 'f' indicate frequency domain signals

 -XYZ' is used to denote 3-axial signals in the X, Y and Z directions

 -mean() indicate average

 -std() indicate standard deviation


- subject : identifies the subject who performed the activity. Its range is from 1 to 30.
- activity : Activity name
- tBodyAcc-mean()-XYZ : Average value of tBodyAcc-mean() values in each axis.
- tBodyAccJerk-mean()-XYZ : Average value of tBodyAccJerk-mean() values in each axis.
- tBodyGyro-mean()-XYZ : Average value of tBodyGyro-mean() values in each axis.
- tBodyGyroJerk-mean()-XYZ : Average value of tBodyGyroJerk-mean() values in each axis.
- tBodyAccMag-mean() : Average value of tBodyAccMag-mean() values.
- tGravityAccMag-mean() : Average value of tGravityAccMag-mean() values.
- tBodyAccJerkMag-mean() : Average value of tBodyAccJerkMag-mean() values.
- tBodyGyroMag-mean() : Average value of tBodyGyroMag-mean() values.
- tBodyGyroJerkMag-mean() : Average value of tBodyGyroJerkMag-mean() values.
- fBodyAcc-mean()-XYZ : Average value of fBodyAcc-mean() values in each axis.
- fBodyAccJerk-mean()-XYZ : Average value of fBodyAccJerk-mean() values in each axis.
- fBodyGyro-mean()-XYZ : Average value of fBodyGyro-mean() values in each axis.
- fBodyAccMag-mean() : Average value of fBodyAccMag-mean() values.
- fBodyBodyAccJerkMag-mean() : Average value of fBodyBodyAccJerkMag-mean() values.
- fBodyBodyGyroMag-mean() : Average value of fBodyBodyGyroMag-mean() values.
- fBodyBodyGyroJerkMag-mean() : Average value of fBodyBodyGyroJerkMag-mean() values.
- tBodyAcc-std()-XYZ : Average value of tBodyAcc-std()() values in each axis.
- tGravityAcc-std()-XYZ : Average value of tGravityAcc-std()() values in each axis.
- tBodyAccJerk-std()-XYZ : Average value of tBodyAccJerk-std() values in each axis.
- tBodyGyro-std()-XYZ : Average value of tBodyGyro-std() values in each axis.
- tBodyGyroJerk-std()-XYZ : Average value of tBodyGyroJerk-std() values in each axis.
- tBodyAccMag-std() : Average value of tBodyAccMag-std() values.
- tGravityAccMag-std() : Average value of tGravityAccMag-std() values.
- tBodyAccJerkMag-std() : Average value of tBodyAccJerkMag-std() values.
- tBodyGyroMag-std() : Average value of tBodyGyroMag-std() values.
- tBodyGyroJerkMag-std() : Average value of tBodyGyroJerkMag-std() values.
- fBodyAcc-std()-XYZ : Average value of fBodyAcc-std() values in each axis.
- fBodyAccJerk-std()-XYZ : Average value of fBodyAccJerk-std() values in each axis.
- fBodyGyro-std()-XYZ : Average value of fBodyGyro-std() values in each axis.
- fBodyAccMag-std() : Average value of fBodyAccMag-std() values.
- fBodyBodyAccJerkMag-std() : Average value of fBodyBodyAccJerkMag-std() values.
- fBodyBodyGyroMag-std() : Average value of fBodyBodyGyroMag-std() values.
- fBodyBodyGyroJerkMag-std() : Average value of fBodyBodyGyroJerkMag-std() values.
 

