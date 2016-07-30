# Code book for Getting and Cleaning Data course assignment

## Study Design

The data can be obtain from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The file must be downloaded and uncompressed. Set R's working directory to the uncompressed 'data' folder. More details regarding the data source can be obtained in the compressed files README.txt.

The following eight files are read from three folders in the uncompressed folder. 
* `features.txt`: contains the names of each of the variables
* `activity_labels.txt`: Each activity identifier and text description
* `X_train.txt`: Data from each subject in the training set
* `y_train.txt`: Determined activity numerical identifier for training set of data
* `subject_train.txt`: Subject identifier for training set of data
* `X_test.txt`: Data from each subject in the test set
* `y_test.txt`: Determined activity numerical identifier for test set of data
* `subject_test.txt`: Subject identifier for test set of data

The contents of each file is first read then data is merged and variable names and activity labels tidied. Mean (but not meanFreq) and std variables are extracted and then averaged by activity and subject. The result is saved to variable 'mean.by.subject.activity' and file 'mean_by_subject_and_activity.csv'

## Code Book

Data output is an average of the input variables by from the data source. The `activity` variable is a textural description of the detected activity while the `subject` variable identifies the human subject producing the data. Each of the remaining variables are normalized figure and bounded within [-1,1].

Output variables are:

    activity
    subject
    tBodyAccMeanX
    tBodyAccMeanY 
    tBodyAccMeanZ 
    tBodyAccStdX
    tBodyAccStdY 
    tBodyAccStdZ
    tGravityAccMeanX
    tGravityAccMeanY
    tGravityAccMeanZ
    tGravityAccStdX
    tGravityAccStdY
    tGravityAccStdZ
    tBodyAccJerkMeanX
    tBodyAccJerkMeanY
    tBodyAccJerkMeanZ
    tBodyAccJerkStdX
    tBodyAccJerkStdY
    tBodyAccJerkStdZ
    tBodyGyroMeanX
    tBodyGyroMeanY
    tBodyGyroMeanZ
    tBodyGyroStdX
    tBodyGyroStdY
    tBodyGyroStdZ
    tBodyGyroJerkMeanX
    tBodyGyroJerkMeanY
    tBodyGyroJerkMeanZ
    tBodyGyroJerkStdX
    tBodyGyroJerkStdY
    tBodyGyroJerkStdZ
    tBodyAccMagMean
    tBodyAccMagStd
    tGravityAccMagMean
    tGravityAccMagStd
    tBodyAccJerkMagMean
    tBodyAccJerkMagStd
    tBodyGyroMagMean
    tBodyGyroMagStd
    tBodyGyroJerkMagMean
    tBodyGyroJerkMagStd
    fBodyAccMeanX
    fBodyAccMeanY
    fBodyAccMeanZ
    fBodyAccStdX
    fBodyAccStdY
    fBodyAccStdZ
    fBodyAccJerkMeanX
    fBodyAccJerkMeanY
    fBodyAccJerkMeanZ
    fBodyAccJerkStdX
    fBodyAccJerkStdY
    fBodyAccJerkStdZ
    fBodyGyroMeanX
    fBodyGyroMeanY
    fBodyGyroMeanZ
    fBodyGyroStdX
    fBodyGyroStdY
    fBodyGyroStdZ
    fBodyAccMagMean
    fBodyAccMagStd
    fBodyBodyAccJerkMagMean
    fBodyBodyAccJerkMagStd
    fBodyBodyGyroMagMean
    fBodyBodyGyroMagStd
    fBodyBodyGyroJerkMagMean
    fBodyBodyGyroJerkMagStd