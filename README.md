# README for Course Project

## Criteria
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:
* 1) a tidy data set as described below
* 2) a link to a Github repository with your script for performing the analysis
* 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
* 4) You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Background
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Instructions
You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- - -

### Script Explanation
The work for this project is contained in the R script file `run_analysis.R`.  Note that in my initial code, I chose to download the data set locally versus the `download.file` option.  Then each of the text files are saved to a variable with the `read.table` function.

The script is somewhat divided into sections according to the instructions. The various text files are merged pairwise before a comprehensive merge, i.e. the 'x' and 'y' datasets are merged together as well as the 'subject' text files, before the eventual merge of all.

The next section of the script finds the columns that relate to a mean and standard deviation; had to look at the `features.txt` file to find the exact locations for these columns.  We then create a subset of the merged dataset to contain these columns with means and standard deviations.

We then examine one of our new columns in the subset that relates to a physical activity, only the columns entries are numerically coded 1-6.  We change this so that the entries are read according to their factor level, e.g. "WALKING", "STANDING", etc.

The next step is to clean up some of the columns in the subset so that ambiguities are removed, e.g. 't' changes to 'time'.  You can see that I have done this one by one.

The final step is to create the second independent tidy dataset that is written as `tidy_data.txt`.
