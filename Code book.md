__Raw Data:__
The raw data comes from the project described here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
and may be downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

__Study design:__
A thorough description of how the data was collected and transformed may be found in the README.md file contained in this repository.

__Code book:__
* Subject_Id - unique identified of the subject, integer from 1-30
* Activity - description of the activity performed, string with one of the following values:
* All variables are conveyed as averages of the raw data based on Subject_Id and Activity and are prefixed with "Average\_"
* The variables have been renamed from the original features in the following format:
* Average\_"Domain"\_"Measuring Device"\_"Acceleration Type"\_"Measurement"\_"Type of Calculation"\_(if applicable, axis)
  - with Domain as either "Time" or "Frequency"
  - with Measuring Device as either "Accelerometer" or "Gyroscope"
  - with Acceleration Type as either "Body" or "Gravity"
  - with Measurement as Acceleration, Jerk, AccelerationMagnitude or JerkMagnitude
  - with Type of Calculation as either Mean or StandardDeviation
  - with (axis) as either X, Y or Z, if applicable.
  - all units are signals that have been normalized between -1 and 1
  - the longer names are a bit verbose, but helped me (and hopefully others) in understanding the true meaning of the column
_The column mappings that use the criteria above are listed here:_
**Original Column:tBodyAcc-mean()-X, New Column:Average_Time_Accelerometer_Body_Acceleration_Mean_X
**Original Column:tBodyAcc-mean()-Y, New Column:Average_Time_Accelerometer_Body_Acceleration_Mean_Y
**Original Column:tBodyAcc-mean()-Z, New Column:Average_Time_Accelerometer_Body_Acceleration_Mean_Z
**Original Column:tBodyAcc-std()-X, New Column:Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_X
**Original Column:tBodyAcc-std()-Y, New Column:Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_Y
**Original Column:tBodyAcc-std()-Z, New Column:Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_Z
**Original Column:tGravityAcc-mean()-X, New Column:Average_Time_Accelerometer_Gravity_Acceleration_Mean_X
**Original Column:tGravityAcc-mean()-Y, New Column:Average_Time_Accelerometer_Gravity_Acceleration_Mean_Y
**Original Column:tGravityAcc-mean()-Z, New Column:Average_Time_Accelerometer_Gravity_Acceleration_Mean_Z
**Original Column:tGravityAcc-std()-X, New Column:Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_X
**Original Column:tGravityAcc-std()-Y, New Column:Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Y
**Original Column:tGravityAcc-std()-Z, New Column:Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Z
**Original Column:tBodyAccJerk-mean()-X, New Column:Average_Time_Accelerometer_Body_Jerk_Mean_X
**Original Column:tBodyAccJerk-mean()-Y, New Column:Average_Time_Accelerometer_Body_Jerk_Mean_Y
**Original Column:tBodyAccJerk-mean()-Z, New Column:Average_Time_Accelerometer_Body_Jerk_Mean_Z
**Original Column:tBodyAccJerk-std()-X, New Column:Average_Time_Accelerometer_Body_Jerk_StandardDeviation_X
**Original Column:tBodyAccJerk-std()-Y, New Column:Average_Time_Accelerometer_Body_Jerk_StandardDeviation_Y
**Original Column:tBodyAccJerk-std()-Z, New Column:Average_Time_Accelerometer_Body_Jerk_StandardDeviation_Z
**Original Column:tBodyGyro-mean()-X, New Column:Average_Time_Gyroscope_Body_Acceleration_Mean_X
**Original Column:tBodyGyro-mean()-Y, New Column:Average_Time_Gyroscope_Body_Acceleration_Mean_Y
**Original Column:tBodyGyro-mean()-Z, New Column:Average_Time_Gyroscope_Body_Acceleration_Mean_Z
**Original Column:tBodyGyro-std()-X, New Column:Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_X
**Original Column:tBodyGyro-std()-Y, New Column:Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_Y
**Original Column:tBodyGyro-std()-Z, New Column:Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_Z
**Original Column:tBodyGyroJerk-mean()-X, New Column:Average_Time_Gyroscope_Body_Jerk_Mean_X
**Original Column:tBodyGyroJerk-mean()-Y, New Column:Average_Time_Gyroscope_Body_Jerk_Mean_Y
**Original Column:tBodyGyroJerk-mean()-Z, New Column:Average_Time_Gyroscope_Body_Jerk_Mean_Z
**Original Column:tBodyGyroJerk-std()-X, New Column:Average_Time_Gyroscope_Body_Jerk_StandardDeviation_X
**Original Column:tBodyGyroJerk-std()-Y, New Column:Average_Time_Gyroscope_Body_Jerk_StandardDeviation_Y
**Original Column:tBodyGyroJerk-std()-Z, New Column:Average_Time_Gyroscope_Body_Jerk_StandardDeviation_Z
**Original Column:tBodyAccMag-mean(), New Column:Average_Time_Accelerometer_Body_AccelerationMagnitude_Mean
**Original Column:tBodyAccMag-std(), New Column:Average_Time_Accelerometer_Body_AccelerationMagnitude_StandardDeviation
**Original Column:tGravityAccMag-mean(), New Column:Average_Time_Accelerometer_Gravity_AccelerationMagnitude_Mean
**Original Column:tGravityAccMag-std(), New Column:Average_Time_Accelerometer_Gravity_AccelerationMagnitude_StandardDeviation
**Original Column:tBodyAccJerkMag-mean(), New Column:Average_Time_Accelerometer_Body_JerkMagnitude_Mean
**Original Column:tBodyAccJerkMag-std(), New Column:Average_Time_Accelerometer_Body_JerkMagnitude_StandardDeviation
**Original Column:tBodyGyroMag-mean(), New Column:Average_Time_Gyroscope_Body_AccelerationMagnitude_Mean
**Original Column:tBodyGyroMag-std(), New Column:Average_Time_Gyroscope_Body_AccelerationMagnitude_StandardDeviation
**Original Column:tBodyGyroJerkMag-mean(), New Column:Average_Time_Gyroscope_Body_JerkMagnitude_Mean
**Original Column:tBodyGyroJerkMag-std(), New Column:Average_Time_Gyroscope_Body_JerkMagnitude_StandardDeviation
**Original Column:fBodyAcc-mean()-X, New Column:Average_Frequency_Accelerometer_Body_Acceleration_Mean_X
**Original Column:fBodyAcc-mean()-Y, New Column:Average_Frequency_Accelerometer_Body_Acceleration_Mean_Y
**Original Column:fBodyAcc-mean()-Z, New Column:Average_Frequency_Accelerometer_Body_Acceleration_Mean_Z
**Original Column:fBodyAcc-std()-X, New Column:Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_X
**Original Column:fBodyAcc-std()-Y, New Column:Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Y
**Original Column:fBodyAcc-std()-Z, New Column:Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Z
**Original Column:fBodyAccJerk-mean()-X, New Column:Average_Frequency_Accelerometer_Body_Jerk_Mean_X
**Original Column:fBodyAccJerk-mean()-Y, New Column:Average_Frequency_Accelerometer_Body_Jerk_Mean_Y
**Original Column:fBodyAccJerk-mean()-Z, New Column:Average_Frequency_Accelerometer_Body_Jerk_Mean_Z
**Original Column:fBodyAccJerk-std()-X, New Column:Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_X
**Original Column:fBodyAccJerk-std()-Y, New Column:Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_Y
**Original Column:fBodyAccJerk-std()-Z, New Column:Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_Z
**Original Column:fBodyGyro-mean()-X, New Column:Average_Frequency_Gyroscope_Body_Acceleration_Mean_X
**Original Column:fBodyGyro-mean()-Y, New Column:Average_Frequency_Gyroscope_Body_Acceleration_Mean_Y
**Original Column:fBodyGyro-mean()-Z, New Column:Average_Frequency_Gyroscope_Body_Acceleration_Mean_Z
**Original Column:fBodyGyro-std()-X, New Column:Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_X
**Original Column:fBodyGyro-std()-Y, New Column:Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Y
**Original Column:fBodyGyro-std()-Z, New Column:Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Z
**Original Column:fBodyAccMag-mean(), New Column:Average_Frequency_Accelerometer_Body_AccelerationMagnitude_Mean
**Original Column:fBodyAccMag-std(), New Column:Average_Frequency_Accelerometer_Body_AccelerationMagnitude_StandardDeviation
**Original Column:fBodyBodyAccJerkMag-mean(), New Column:Average_Frequency_Accelerometer_Body_JerkMagnitude_Mean
**Original Column:fBodyBodyAccJerkMag-std(), New Column:Average_Frequency_Accelerometer_Body_JerkMagnitude_StandardDeviation
**Original Column:fBodyBodyGyroMag-mean(), New Column:Average_Frequency_Gyroscope_Body_AccelerationMagnitude_Mean
**Original Column:fBodyBodyGyroMag-std(), New Column:Average_Frequency_Gyroscope_Body_AccelerationMagnitude_StandardDeviation
**Original Column:fBodyBodyGyroJerkMag-mean(), New Column:Average_Frequency_Gyroscope_Body_JerkMagnitude_Mean
**Original Column:fBodyBodyGyroJerkMag-std(), New Column:Average_Frequency_Gyroscope_Body_JerkMagnitude_StandardDeviation

__Additional details regarding each variable column:__
The description below is an exceprt from the raw data set's features_info.txt file contained in the zip file referenced above.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing. 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

__References:__
Per data set license:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


