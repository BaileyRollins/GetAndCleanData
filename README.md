Raw Data: The raw data come from the project described here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
and may be downloaded from here:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The assignment calls for retrieving the data related to means and standard deviations, only.  

The script assumes the data is in the same folder structure as the zip file, but in the working directory.  A variable "datapath" may be set to use an alternate directory, if desired.

The tidy data set was created using the following steps, in order:
* The full test and training data is combined to a data table called observations
* Since the activity data is in separate files from the observations, it is comibined to its own data table, called activityCode
* Since the subject data is in separate files from the observations, it is comibined to its own data table, called subjects
* The observations data doesn't have headers, so the column names from features.txt is pulled in to a datasetColumns set, converted to a vector, and applied to names the observations data table
* Since the activity data is encoded, a lookup set is created to merge later for descriptive activity names
* The observations, activityCode and subjects data are in the same order, so to add the activity codes and subjects to the observations set, the respective data columns are added to the beginning of the data table.
* The observations data table is updated with descriptive names
#the format used for keys is "type"_Id
#the format used for variables is "Domain"_"Measuring Device"_"Base of Measurement"_"Measurement"_"Type of Calculation"_(if applicable, axis)
* The activity names are merged into the observations data set and "Activity_Id" is removed
* The averages of each of the (non-key) columns is calculated by Subject_Id and Activity.
* The column names are updated to properly reflect that the data contains averages