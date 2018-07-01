#################Crs3: Getting and Cleaning Data
##########Course Project
#Here are the data for the project:

#  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## You should create one R script called run_analysis.R that does the following.

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
##average of each variable for each activity and each subject.

###############################
library(data.table)
library(reshape2)
library(plyr)

##### Preliminary work
## download data set locally
## setwd to /UCI_HAR_Dataset
setwd('./Documents/CourseraCourses/dataScienceSpecialization/cr3_gettingAndCleaningData/UCI_HAR_Dataset/')
## read in files
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/X_test.txt")

y_test <- read.table("./test/y_test.txt")
y_train <- read.table("./train/y_train.txt")

activity_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")  

##### Merge process
## merging like data sets first
dataSubject <- rbind(subject_train, subject_test)
dataY <- rbind(y_train, y_test)
dataX <- rbind(x_train, x_test)

names(dataSubject) #V1 is only column
names(dataY) #V1 is only column
names(dataX) #cols V1-V561

## assign names to variables
names(dataSubject) <- c("subject")
names(dataY) <- c("activity")
names(dataX) <- features$V2

## merge all
dataCollate <- cbind(dataSubject, dataY)
Data <- cbind(dataX, dataCollate)
head(Data)

##### Extraction of measurements on mean and sd for each measurement
## take peak at 'features', denotes 'mean()' and 'std()'
## we want those containing either
subsetFeatures <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]

## cleanup 'subsetFeatures' and combine with 'subject' and 'activity' cols in
#merged 'Data'
mynames <- c(as.character(subsetFeatures), "subject", "activity")
Data <- subset(Data, select = mynames)
head(Data)
str(Data)

##### Use descriptive activity names to name activities
## reminder of what activity_labels is
activity_labels

## need to apply these to new 'activity' column in 'Data'
activity_new <- factor(Data$activity)
levels(activity_new) <- activity_labels[,2]
Data$activity <- activity_new

## test view
head(Data$activity,10)

##### Label data set with descriptive variable names
## review columns
names(Data)

## using gsub: change all cols starting with 't' to 'time'
names(Data) <- gsub("^t", "time", names(Data))

## using gsub: change all cols starting with 'f' to 'frequency'
names(Data) <- gsub("^f", "frequency", names(Data))

## using gsub: change all instances of "Acc" to "Accelerometer
names(Data) <- gsub("Acc", "Accelerometer", names(Data))

## using gsub: change all instances of "Gyro" to "Gyroscope"
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))

## using gsub: change all instances of "Mag" to "Magnitude"
names(Data) <- gsub("Mag", "Magnitude", names(Data))

## using gsub: change all instances of "BodyBody" to "Body"
names(Data) <- gsub("BodyBody", "Body", names(Data))

## view results
names(Data)

##### Create second independent tidy data set w/ avg of each variable for each 
##### activity and each subject

## code
Data2 <- aggregate(. ~subject + activity, Data, mean)
Data2 <- Data2[order(Data2$subject, Data2$activity), ]
write.table(Data2, file= "tidy_data.txt", row.name = FALSE)

## read new file
test <- read.table("tidy_data.txt")
head(test)