# Project 2

This directory contains the output of the second project for the data science specialization course Getting and Cleaning the Data
in Coursera. Here we will describe what are the files that are included in this repository and what the main script does for
extracting the useful data.
The original data consist of Samsung gyroscope data for 30 individuals divided in training (70 %) and test (30 %) data which
Only the useful data for thisproject is included in this repository. The complete and original data can be obtained directly from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The main goal of the project was to merge both the training and test data from the original data set in a single one, while only
inluding variables that correspond to mean and standard deviation from the original features. Here we will describe the files that
exist in this directory to acomplish this task.

## Files
* run_analysis.R: Main script file to extract the data. To be described below.
* CodeBook.txt: Description of the variables included in the extracted files.
* UCI HAR Dataset/: Directory that contains the original data from where the variales are extracted. Only the useful data files were kepts.
* merged_data_set.txt: Contains the merged data set (train + test) with all mean and standard deviation features plust the subject identity
information and the activity classification. For more information consult the file Codebook.txt.
* tidy_aggregated_data_set.txt: A mean aggregation of the previous file grouped both subject and activity.

## Main Script

As described, the main script is coded in run_analysis.R. Here we will give a brief description of what this file does

* Features
** It extract the names of all the features
** It finds the features corresponding to mean and standard deviation, which will be the only ones to be considered for creating the new data sets.
** It renames these features


