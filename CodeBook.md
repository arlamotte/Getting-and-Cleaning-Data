# Code Book

## Tidy data obtained from the "Human Activity Recognition Using Smartphones Dataset"

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

More details can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The tidy data set was obtained by merging the data sets of Training and Test subjects using the script run_analysis.R.

The script run_analysis.R load al relevant data sets and rearange then on a silgle table. Then calculate the Average value of each variable goruping by Subject and Activity.

## Vars

The prefix 't' to denote time
-XYZ' is used to denote 3-axial signals in the X, Y and Z directions



- subject : identifies the subject who performed the activity. Its range is from 1 to 30.
- activity : Activity name
- tBodyAcc-mean()-XYZ :  
- tGravityAcc-mean()-XYZ
- tBodyAccJerk-mean()-XYZ
- tBodyGyro-mean()-XYZ
- tBodyGyroJerk-mean()-XYZ
- tBodyAccMag-mean()
- tGravityAccMag-mean()
- tBodyAccJerkMag-mean()
- tBodyGyroMag-mean()
- tBodyGyroJerkMag-mean()
- fBodyAcc-mean()-XYZ
- fBodyAccJerk-mean()-XYZ
- fBodyGyro-mean()-XYZ
- fBodyAccMag-mean()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroJerkMag-mean()
- tBodyAcc-std()-XYZ
- tGravityAcc-std()-XYZ
- tBodyAccJerk-std()-XYZ
- tBodyGyro-std()-XYZ
- tBodyGyroJerk-std()-XYZ
- tBodyAccMag-std()
- tGravityAccMag-std()
- tBodyAccJerkMag-std()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-std()
- fBodyAcc-std()-XYZ
- fBodyAccJerk-std()-XYZ
- fBodyGyro-std()-XYZ
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-std()
 

