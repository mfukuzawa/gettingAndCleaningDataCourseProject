# CodeBook

## Data
This dataset is taken from the [UCI Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  For a direct download of the zipped files, click this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

- - -

### Dataset Info
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Info
For each record in the dataset it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

### Text files
The dataset includes the following:

* 'README.txt': self-explanatory
* 'activity_labels.txt': link between the class labels and respective activity name.
* 'features_info.txt': information about the variables used on the feature vector.
* 'features.txt': list of all features.
* 'train/X_train.txt': training dataset.
* 'train/y_train.txt': training dataset labels.
* 'test/X_test.txt': test dataset.
* 'test/y_test.txt': test dataset labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each sample (range is from 1 to 30).

Note: Features are normalized and bounded within [-1,1]. Each feature vector is a row on the text file.

### Variables
The merged dataset created (called `Data` in the script) contains 66 columns with provided variable data and two columns of "forced" data.  These last two columns are denoted `subject` and `activity`.  The former refers to human subjects numbered 1 to 30; the latter refers to the physical activity that the subject was performing during the monitor period.  Activity includes the following possible levels:

* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING`
* `STANDING`
* `LAYING`

The other variables are split between time and frequency domains.

#### Time

* `timeBodyAccelerometer-mean()-X`
* `timeBodyAccelerometer-mean()-Y`              
* `timeBodyAccelerometer-mean()-Z`
* `timeBodyAccelerometer-std()-X`
* `timeBodyAccelerometer-std()-Y`
* `timeBodyAccelerometer-std()-Z`
* `timeGravityAccelerometer-mean()-X`        
* `timeGravityAccelerometer-mean()-Y`            
* `timeGravityAccelerometer-mean()-Z`
* `timeGravityAccelerometer-std()-X`            
* `timeGravityAccelerometer-std()-Y`  
* `timeGravityAccelerometer-std()-Z`
* `timeBodyAccelerometerJerk-mean()-X`
* `timeBodyAccelerometerJerk-mean()-Y`
* `timeBodyAccelerometerJerk-mean()-Z`
* `timeBodyAccelerometerJerk-std()-X`
* `timeBodyAccelerometerJerk-std()-Y`
* `timeBodyAccelerometerJerk-std()-Z`
* `timeBodyGyroscope-mean()-X`
* `timeBodyGyroscope-mean()-Y`
* `timeBodyGyroscope-mean()-Z`                
* `timeBodyGyroscope-std()-X`                     
* `timeBodyGyroscope-std()-Y`
* `timeBodyGyroscope-std()-Z`
* `timeBodyGyroscopeJerk-mean()-X`                
* `timeBodyGyroscopeJerk-mean()-Y`
* `timeBodyGyroscopeJerk-mean()-Z`
* `timeBodyGyroscopeJerk-std()-X`
* `timeBodyGyroscopeJerk-std()-Y`             
* `timeBodyGyroscopeJerk-std()-Z`                 
* `timeBodyAccelerometerMagnitude-mean()`          
* `timeBodyAccelerometerMagnitude-std()`          
* `timeGravityAccelerometerMagnitude-mean()`    
* `timeGravityAccelerometerMagnitude-std()`
* `timeBodyAccelerometerJerkMagnitude-mean()`
* `timeBodyAccelerometerJerkMagnitude-std()`      
* `timeBodyGyroscopeMagnitude-mean()`    
* `timeBodyGyroscopeMagnitude-std()`
* `timeBodyGyroscopeJerkMagnitude-mean()`
* `timeBodyGyroscopeJerkMagnitude-std()`   


#### Frequency           
"frequencyBodyAccelerometer-mean()-X"            "frequencyBodyAccelerometer-mean()-Y"           
"frequencyBodyAccelerometer-mean()-Z"            "frequencyBodyAccelerometer-std()-X"            
"frequencyBodyAccelerometer-std()-Y"             "frequencyBodyAccelerometer-std()-Z"            
"frequencyBodyAccelerometerJerk-mean()-X"        "frequencyBodyAccelerometerJerk-mean()-Y"       
"frequencyBodyAccelerometerJerk-mean()-Z"        "frequencyBodyAccelerometerJerk-std()-X"        
"frequencyBodyAccelerometerJerk-std()-Y"         "frequencyBodyAccelerometerJerk-std()-Z"        
"frequencyBodyGyroscope-mean()-X"                "frequencyBodyGyroscope-mean()-Y"               
"frequencyBodyGyroscope-mean()-Z"                "frequencyBodyGyroscope-std()-X"                
"frequencyBodyGyroscope-std()-Y"                 "frequencyBodyGyroscope-std()-Z"                
"frequencyBodyAccelerometerMagnitude-mean()"     "frequencyBodyAccelerometerMagnitude-std()"     
"frequencyBodyAccelerometerJerkMagnitude-mean()" "frequencyBodyAccelerometerJerkMagnitude-std()"
"frequencyBodyGyroscopeMagnitude-mean()"         "frequencyBodyGyroscopeMagnitude-std()"         
"frequencyBodyGyroscopeJerkMagnitude-mean()"     "frequencyBodyGyroscopeJerkMagnitude-std()"
