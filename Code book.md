__Raw Data:__
The raw data come from the project described here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
and may be downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

__Study design:__
A thorough description of how the data was collected and transformed may be found in the README.md file contained in this repository.

__Code book:__
* Subject_Id - unique identified of the subject, integer from 1-30
* Activity - description of the activity performed, string with one of the following values:
* All variables are conveyed as averages of the raw data based on Subject_Id and Activity and are prefixed with "Average\_"
*The variables have been renamed from the original features in the following format:
*Average\_"Domain"\_"Measuring Device"\_"Acceleration Type"\_"Measurement"\_"Type of Calculation"\_(if applicable, axis)
  - with Domain as either "Time" or "Frequency"
  - with Measuring Device as either "Accelerometer" or "Gyroscope"
  - with Acceleration Type as either "Body" or "Gravity"
  - with Measurement as Acceleration, Jerk, AccelerationMagnitude or JerkMagnitude
  - with Type of Calculation as either Mean or StandardDeviation
  - with (axis) as either X, Y or Z, if applicable.
  - all units are signals that have been normalized between -1 and 1

__Additional details regarding each variable column:__
The description below is an exceprt from the raw data set's features_info.txt file contained in the zip file referenced above.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing. 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

__References:__
Per data set license:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


