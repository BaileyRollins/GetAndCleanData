__Raw Data:__
The raw data come from the project described here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
and may be downloaded from here:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The assignment calls for retrieving the data related to means and standard deviations, only.  

The script assumes the data is in the same folder structure as the zip file, but in the working directory.  A variable "datapath" may be set to use an alternate directory, if desired.
All files were read via read.table with sep=""

The tidy data set was created using the following steps, in order:
* The full test and training data is combined to a data table called observations
* Since the activity data is in separate files from the observations, it is comibined to its own data table, called activityCode
* Since the subject data is in separate files from the observations, it is comibined to its own data table, called subjects
* The observations data doesn't have headers, so the column names from features.txt is pulled in to a datasetColumns set, converted to a vector, and applied to names the observations data table
* Since the activity data is encoded, a lookup set is created to merge later for descriptive activity names
* The observations, activityCode and subjects data are in the same order, so to add the activity codes and subjects to the observations set, the respective data columns are added to the beginning of the data table.
* The observations data table is updated with descriptive names as describes in the Code book
* The activity names are merged into the observations data set and "Activity_Id" is removed
* The averages of each of the (non-key) columns is calculated by Subject_Id and Activity into a new data table called observationsAverage.
* The column names are updated to properly reflect that the data contains averages
* The file was writted using table.write() as observation_averages.txt and row.names=FALSE.

__References:__
Per data set license:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
