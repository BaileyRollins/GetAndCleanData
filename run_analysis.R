#path for the data (if not in working directory)
datapath <- "" #"C:\\Users\\bailey\\Desktop\\Data Science\\3 - Gathering Data\\ProjectData\\UCI HAR Dataset\\"

#load the observations training and test data
observations <- rbind(
   read.table(paste(datapath, "train\\X_train.txt", sep=""))
  ,read.table(paste(datapath, "test\\X_test.txt", sep=""))
  )

#load the activity training and test data
activityCode <- rbind(
   read.table(paste(datapath, "train\\y_train.txt", sep=""))
  ,read.table(paste(datapath, "test\\y_test.txt", sep=""))
  )

#load the subjects training and test data
subjects <- rbind(
   read.table(paste(datapath, "train\\subject_train.txt", sep=""))
  ,read.table(paste(datapath, "test\\subject_test.txt", sep=""))
  )

#load the column names from the features file and update the names of the observations data table
datasetColumns <- read.table(paste(datapath, "features.txt", sep=""))
datasetColumns <- lapply(datasetColumns[2], as.character)
names(observations) <- unlist(datasetColumns)

#load the activity labels and name the columns
activityLookup <- read.table(paste(datapath, "activity_labels.txt", sep=""))
colnames(activityLookup) <- c("Activity_Id", "Activity")

#filter the observations data table to only include columns related to means and standard deviations
observations <- observations[,grepl("(mean\\(\\))|(std\\(\\))", names(observations))]

#add the columns for Activity_Id and Subject_Id to the observations data table
observations <- cbind(activityCode[1], observations)
#colnames(observations)[1] <- "Activity_Id"
observations <- cbind(subjects[1], observations)
#colnames(observations)[1] <- "Subject_Id"

#rename the column names for the observations table
#the format used for keys is "type"_Id
#the format used for variables is "Domain"_"Measuring Device"_"Acceleration Type"_"Measurement"_"Type of Calculation"_(if applicable, axis)
colnames(observations) <-
c("Subject_Id",
"Activity_Id",
"Time_Accelerometer_Body_Acceleration_Mean_X",
"Time_Accelerometer_Body_Acceleration_Mean_Y",
"Time_Accelerometer_Body_Acceleration_Mean_Z",
"Time_Accelerometer_Body_Acceleration_StandardDeviation_X",
"Time_Accelerometer_Body_Acceleration_StandardDeviation_Y",
"Time_Accelerometer_Body_Acceleration_StandardDeviation_Z",
"Time_Accelerometer_Gravity_Acceleration_Mean_X",
"Time_Accelerometer_Gravity_Acceleration_Mean_Y",
"Time_Accelerometer_Gravity_Acceleration_Mean_Z",
"Time_Accelerometer_Gravity_Acceleration_StandardDeviation_X",
"Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Y",
"Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Z",
"Time_Accelerometer_Body_Jerk_Mean_X",
"Time_Accelerometer_Body_Jerk_Mean_Y",
"Time_Accelerometer_Body_Jerk_Mean_Z",
"Time_Accelerometer_Body_Jerk_StandardDeviation_X",
"Time_Accelerometer_Body_Jerk_StandardDeviation_Y",
"Time_Accelerometer_Body_Jerk_StandardDeviation_Z",
"Time_Gyroscope_Body_Acceleration_Mean_X",
"Time_Gyroscope_Body_Acceleration_Mean_Y",
"Time_Gyroscope_Body_Acceleration_Mean_Z",
"Time_Gyroscope_Body_Acceleration_StandardDeviation_X",
"Time_Gyroscope_Body_Acceleration_StandardDeviation_Y",
"Time_Gyroscope_Body_Acceleration_StandardDeviation_Z",
"Time_Gyroscope_Body_Jerk_Mean_X",
"Time_Gyroscope_Body_Jerk_Mean_Y",
"Time_Gyroscope_Body_Jerk_Mean_Z",
"Time_Gyroscope_Body_Jerk_StandardDeviation_X",
"Time_Gyroscope_Body_Jerk_StandardDeviation_Y",
"Time_Gyroscope_Body_Jerk_StandardDeviation_Z",
"Time_Accelerometer_Body_AccelerationMagnitude_Mean",
"Time_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
"Time_Accelerometer_Gravity_AccelerationMagnitude_Mean",
"Time_Accelerometer_Gravity_AccelerationMagnitude_StandardDeviation",
"Time_Accelerometer_Body_JerkMagnitude_Mean",
"Time_Accelerometer_Body_JerkMagnitude_StandardDeviation",
"Time_Gyroscope_Body_AccelerationMagnitude_Mean",
"Time_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
"Time_Gyroscope_Body_JerkMagnitude_Mean",
"Time_Gyroscope_Body_JerkMagnitude_StandardDeviation",
"Frequency_Accelerometer_Body_Acceleration_Mean_X",
"Frequency_Accelerometer_Body_Acceleration_Mean_Y",
"Frequency_Accelerometer_Body_Acceleration_Mean_Z",
"Frequency_Accelerometer_Body_Acceleration_StandardDeviation_X",
"Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Y",
"Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Z",
"Frequency_Accelerometer_Body_Jerk_Mean_X",
"Frequency_Accelerometer_Body_Jerk_Mean_Y",
"Frequency_Accelerometer_Body_Jerk_Mean_Z",
"Frequency_Accelerometer_Body_Jerk_StandardDeviation_X",
"Frequency_Accelerometer_Body_Jerk_StandardDeviation_Y",
"Frequency_Accelerometer_Body_Jerk_StandardDeviation_Z",
"Frequency_Gyroscope_Body_Acceleration_Mean_X",
"Frequency_Gyroscope_Body_Acceleration_Mean_Y",
"Frequency_Gyroscope_Body_Acceleration_Mean_Z",
"Frequency_Gyroscope_Body_Acceleration_StandardDeviation_X",
"Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Y",
"Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Z",
"Frequency_Accelerometer_Body_AccelerationMagnitude_Mean",
"Frequency_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
"Frequency_Accelerometer_Body_JerkMagnitude_Mean",
"Frequency_Accelerometer_Body_JerkMagnitude_StandardDeviation",
"Frequency_Gyroscope_Body_AccelerationMagnitude_Mean",
"Frequency_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
"Frequency_Gyroscope_Body_JerkMagnitude_Mean",
"Frequency_Gyroscope_Body_JerkMagnitude_StandardDeviation")

#merge to get the Acitivity name instead of the key and re-order the results, filtering out the Activity_Id
observations <- merge(observations, activityLookup, by="Activity_Id")
observations <- observations[c("Subject_Id",
                   "Activity",
                   "Time_Accelerometer_Body_Acceleration_Mean_X",
                   "Time_Accelerometer_Body_Acceleration_Mean_Y",
                   "Time_Accelerometer_Body_Acceleration_Mean_Z",
                   "Time_Accelerometer_Body_Acceleration_StandardDeviation_X",
                   "Time_Accelerometer_Body_Acceleration_StandardDeviation_Y",
                   "Time_Accelerometer_Body_Acceleration_StandardDeviation_Z",
                   "Time_Accelerometer_Gravity_Acceleration_Mean_X",
                   "Time_Accelerometer_Gravity_Acceleration_Mean_Y",
                   "Time_Accelerometer_Gravity_Acceleration_Mean_Z",
                   "Time_Accelerometer_Gravity_Acceleration_StandardDeviation_X",
                   "Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Y",
                   "Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Z",
                   "Time_Accelerometer_Body_Jerk_Mean_X",
                   "Time_Accelerometer_Body_Jerk_Mean_Y",
                   "Time_Accelerometer_Body_Jerk_Mean_Z",
                   "Time_Accelerometer_Body_Jerk_StandardDeviation_X",
                   "Time_Accelerometer_Body_Jerk_StandardDeviation_Y",
                   "Time_Accelerometer_Body_Jerk_StandardDeviation_Z",
                   "Time_Gyroscope_Body_Acceleration_Mean_X",
                   "Time_Gyroscope_Body_Acceleration_Mean_Y",
                   "Time_Gyroscope_Body_Acceleration_Mean_Z",
                   "Time_Gyroscope_Body_Acceleration_StandardDeviation_X",
                   "Time_Gyroscope_Body_Acceleration_StandardDeviation_Y",
                   "Time_Gyroscope_Body_Acceleration_StandardDeviation_Z",
                   "Time_Gyroscope_Body_Jerk_Mean_X",
                   "Time_Gyroscope_Body_Jerk_Mean_Y",
                   "Time_Gyroscope_Body_Jerk_Mean_Z",
                   "Time_Gyroscope_Body_Jerk_StandardDeviation_X",
                   "Time_Gyroscope_Body_Jerk_StandardDeviation_Y",
                   "Time_Gyroscope_Body_Jerk_StandardDeviation_Z",
                   "Time_Accelerometer_Body_AccelerationMagnitude_Mean",
                   "Time_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
                   "Time_Accelerometer_Gravity_AccelerationMagnitude_Mean",
                   "Time_Accelerometer_Gravity_AccelerationMagnitude_StandardDeviation",
                   "Time_Accelerometer_Body_JerkMagnitude_Mean",
                   "Time_Accelerometer_Body_JerkMagnitude_StandardDeviation",
                   "Time_Gyroscope_Body_AccelerationMagnitude_Mean",
                   "Time_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
                   "Time_Gyroscope_Body_JerkMagnitude_Mean",
                   "Time_Gyroscope_Body_JerkMagnitude_StandardDeviation",
                   "Frequency_Accelerometer_Body_Acceleration_Mean_X",
                   "Frequency_Accelerometer_Body_Acceleration_Mean_Y",
                   "Frequency_Accelerometer_Body_Acceleration_Mean_Z",
                   "Frequency_Accelerometer_Body_Acceleration_StandardDeviation_X",
                   "Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Y",
                   "Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Z",
                   "Frequency_Accelerometer_Body_Jerk_Mean_X",
                   "Frequency_Accelerometer_Body_Jerk_Mean_Y",
                   "Frequency_Accelerometer_Body_Jerk_Mean_Z",
                   "Frequency_Accelerometer_Body_Jerk_StandardDeviation_X",
                   "Frequency_Accelerometer_Body_Jerk_StandardDeviation_Y",
                   "Frequency_Accelerometer_Body_Jerk_StandardDeviation_Z",
                   "Frequency_Gyroscope_Body_Acceleration_Mean_X",
                   "Frequency_Gyroscope_Body_Acceleration_Mean_Y",
                   "Frequency_Gyroscope_Body_Acceleration_Mean_Z",
                   "Frequency_Gyroscope_Body_Acceleration_StandardDeviation_X",
                   "Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Y",
                   "Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Z",
                   "Frequency_Accelerometer_Body_AccelerationMagnitude_Mean",
                   "Frequency_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
                   "Frequency_Accelerometer_Body_JerkMagnitude_Mean",
                   "Frequency_Accelerometer_Body_JerkMagnitude_StandardDeviation",
                   "Frequency_Gyroscope_Body_AccelerationMagnitude_Mean",
                   "Frequency_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
                   "Frequency_Gyroscope_Body_JerkMagnitude_Mean",
                   "Frequency_Gyroscope_Body_JerkMagnitude_StandardDeviation")]


#take the average the variables and rename the columns to appropriatly convey updated the column
averageObservations <- aggregate(observations[,-(1:2)], by=list("Subject_Id" = observations$Subject_Id, "Activity" = observations$Activity), FUN=mean, na.rm=TRUE)
colnames(averageObservations) <-
  c("Subject_Id",
    "Activity",
    "Average_Time_Accelerometer_Body_Acceleration_Mean_X",
    "Average_Time_Accelerometer_Body_Acceleration_Mean_Y",
    "Average_Time_Accelerometer_Body_Acceleration_Mean_Z",
    "Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_X",
    "Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_Y",
    "Average_Time_Accelerometer_Body_Acceleration_StandardDeviation_Z",
    "Average_Time_Accelerometer_Gravity_Acceleration_Mean_X",
    "Average_Time_Accelerometer_Gravity_Acceleration_Mean_Y",
    "Average_Time_Accelerometer_Gravity_Acceleration_Mean_Z",
    "Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_X",
    "Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Y",
    "Average_Time_Accelerometer_Gravity_Acceleration_StandardDeviation_Z",
    "Average_Time_Accelerometer_Body_Jerk_Mean_X",
    "Average_Time_Accelerometer_Body_Jerk_Mean_Y",
    "Average_Time_Accelerometer_Body_Jerk_Mean_Z",
    "Average_Time_Accelerometer_Body_Jerk_StandardDeviation_X",
    "Average_Time_Accelerometer_Body_Jerk_StandardDeviation_Y",
    "Average_Time_Accelerometer_Body_Jerk_StandardDeviation_Z",
    "Average_Time_Gyroscope_Body_Acceleration_Mean_X",
    "Average_Time_Gyroscope_Body_Acceleration_Mean_Y",
    "Average_Time_Gyroscope_Body_Acceleration_Mean_Z",
    "Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_X",
    "Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_Y",
    "Average_Time_Gyroscope_Body_Acceleration_StandardDeviation_Z",
    "Average_Time_Gyroscope_Body_Jerk_Mean_X",
    "Average_Time_Gyroscope_Body_Jerk_Mean_Y",
    "Average_Time_Gyroscope_Body_Jerk_Mean_Z",
    "Average_Time_Gyroscope_Body_Jerk_StandardDeviation_X",
    "Average_Time_Gyroscope_Body_Jerk_StandardDeviation_Y",
    "Average_Time_Gyroscope_Body_Jerk_StandardDeviation_Z",
    "Average_Time_Accelerometer_Body_AccelerationMagnitude_Mean",
    "Average_Time_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
    "Average_Time_Accelerometer_Gravity_AccelerationMagnitude_Mean",
    "Average_Time_Accelerometer_Gravity_AccelerationMagnitude_StandardDeviation",
    "Average_Time_Accelerometer_Body_JerkMagnitude_Mean",
    "Average_Time_Accelerometer_Body_JerkMagnitude_StandardDeviation",
    "Average_Time_Gyroscope_Body_AccelerationMagnitude_Mean",
    "Average_Time_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
    "Average_Time_Gyroscope_Body_JerkMagnitude_Mean",
    "Average_Time_Gyroscope_Body_JerkMagnitude_StandardDeviation",
    "Average_Frequency_Accelerometer_Body_Acceleration_Mean_X",
    "Average_Frequency_Accelerometer_Body_Acceleration_Mean_Y",
    "Average_Frequency_Accelerometer_Body_Acceleration_Mean_Z",
    "Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_X",
    "Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Y",
    "Average_Frequency_Accelerometer_Body_Acceleration_StandardDeviation_Z",
    "Average_Frequency_Accelerometer_Body_Jerk_Mean_X",
    "Average_Frequency_Accelerometer_Body_Jerk_Mean_Y",
    "Average_Frequency_Accelerometer_Body_Jerk_Mean_Z",
    "Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_X",
    "Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_Y",
    "Average_Frequency_Accelerometer_Body_Jerk_StandardDeviation_Z",
    "Average_Frequency_Gyroscope_Body_Acceleration_Mean_X",
    "Average_Frequency_Gyroscope_Body_Acceleration_Mean_Y",
    "Average_Frequency_Gyroscope_Body_Acceleration_Mean_Z",
    "Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_X",
    "Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Y",
    "Average_Frequency_Gyroscope_Body_Acceleration_StandardDeviation_Z",
    "Average_Frequency_Accelerometer_Body_AccelerationMagnitude_Mean",
    "Average_Frequency_Accelerometer_Body_AccelerationMagnitude_StandardDeviation",
    "Average_Frequency_Accelerometer_Body_JerkMagnitude_Mean",
    "Average_Frequency_Accelerometer_Body_JerkMagnitude_StandardDeviation",
    "Average_Frequency_Gyroscope_Body_AccelerationMagnitude_Mean",
    "Average_Frequency_Gyroscope_Body_AccelerationMagnitude_StandardDeviation",
    "Average_Frequency_Gyroscope_Body_JerkMagnitude_Mean",
    "Average_Frequency_Gyroscope_Body_JerkMagnitude_StandardDeviation")

#write the data
write.table(averageObservations, paste(datapath, "observation_averages.txt"), row.names = FALSE)

#optional clean up intermediate variables
#remove(activityCode, activityLookup, subjects, datasetColumns)