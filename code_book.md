
## Variables

### subject

  * Description: The subject identifier
  * Data Type/Units: integer
  * Values:
    * 1..30: Uniquely identifies 1 of 30 volunteers aged between 19-48 years.

### activity

  * Description: 1 of 6 distinct activities during which the feature was measured
  * Data Type/Units: string
  * Values:
    * LAYING
    * SITTING
    * STANDING
    * WALKING
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS

### feature

  * Description: The feature measured.  The following describes how to interpret each feature name
    * Prefix:
      * t: time domain signal
      * f: fast fourier transformed
    * Raw signal source instrument:
      * Acc: Accelerometer
      * Gyro: Gyroscope
        * For the Gyroscopic measure, Body and Gravity measures were separated
    * Other attributes:
      * Jerk: measures derived in time
      * Mag: Euclidean norm magnitude of Jerk signals
      * X, Y, Z: axis of the feature
      * mean: Mean of the feature
      * std: Standard deviation of the feature
  * Data Type/Units: string
  * Values:
    * fBodyAcc.X.mean
    * fBodyAcc.X.std
    * fBodyAcc.Y.mean
    * fBodyAcc.Y.std
    * fBodyAcc.Z.mean
    * fBodyAcc.Z.std
    * fBodyAccJerk.X.mean
    * fBodyAccJerk.X.std
    * fBodyAccJerk.Y.mean
    * fBodyAccJerk.Y.std
    * fBodyAccJerk.Z.mean
    * fBodyAccJerk.Z.std
    * fBodyAccMag.mean
    * fBodyAccMag.std
    * fBodyBodyAccJerkMag.mean
    * fBodyBodyAccJerkMag.std
    * fBodyBodyGyroJerkMag.mean
    * fBodyBodyGyroJerkMag.std
    * fBodyBodyGyroMag.mean
    * fBodyBodyGyroMag.std
    * fBodyGyro.X.mean
    * fBodyGyro.X.std
    * fBodyGyro.Y.mean
    * fBodyGyro.Y.std
    * fBodyGyro.Z.mean
    * fBodyGyro.Z.std
    * tBodyAcc.X.mean
    * tBodyAcc.X.std
    * tBodyAcc.Y.mean
    * tBodyAcc.Y.std
    * tBodyAcc.Z.mean
    * tBodyAcc.Z.std
    * tBodyAccJerk.X.mean
    * tBodyAccJerk.X.std
    * tBodyAccJerk.Y.mean
    * tBodyAccJerk.Y.std
    * tBodyAccJerk.Z.mean
    * tBodyAccJerk.Z.std
    * tBodyAccJerkMag.mean
    * tBodyAccJerkMag.std
    * tBodyAccMag.mean
    * tBodyAccMag.std
    * tBodyGyro.X.mean
    * tBodyGyro.X.std
    * tBodyGyro.Y.mean
    * tBodyGyro.Y.std
    * tBodyGyro.Z.mean
    * tBodyGyro.Z.std
    * tBodyGyroJerk.X.mean
    * tBodyGyroJerk.X.std
    * tBodyGyroJerk.Y.mean
    * tBodyGyroJerk.Y.std
    * tBodyGyroJerk.Z.mean
    * tBodyGyroJerk.Z.std
    * tBodyGyroJerkMag.mean
    * tBodyGyroJerkMag.std
    * tBodyGyroMag.mean
    * tBodyGyroMag.std
    * tGravityAcc.X.mean
    * tGravityAcc.X.std
    * tGravityAcc.Y.mean
    * tGravityAcc.Y.std
    * tGravityAcc.Z.mean
    * tGravityAcc.Z.std
    * tGravityAccMag.mean
    * tGravityAccMag.std

### average

  * Description: Mean of the given feature variable by subject and activity
  * Data Type/Units: numeric, normalized and bounded within [-1, 1]
  * Values:
    * [-1, 1]
