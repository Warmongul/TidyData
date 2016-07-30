# Getting and Cleaning Data course assignment 
This repository contains two items:
* run_analysis.R
* CodeBook.md

## run_analysis.R
Run analysis script reads and tidies data as per Coursera course assignment for the Getting and Cleaning Data lesson. The data read is from  the accelerometers of a Samsung Galaxy S smartphone while human subjects performed a variety of activities such as walking, jogging, climbing stairs. 

The data can be obtain from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The file must be downloaded and uncompressed. Set R's working directory to the uncompressed 'data' folder. More details regarding the data source can be obtained in the compressed files README.txt.

Executing the script reads the data from multiple files in the set working directory, combines the data and outputs a variable `mean.by.subject.activity` and file `mean_by_subject_and_activity.csv` which averages each of the mean and standard deviation variables by subject and activity. 

## CodeBook.md

Contains a description script study design and output variables