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
* CodeBook.md: Description of the variables included in the extracted files.
* UCI HAR Dataset/: Directory that contains the original data from where the variales are extracted. Only the useful data files were kepts.
* merged_data_set.txt: Contains the merged data set (train + test) with all mean and standard deviation features plust the subject identity
information and the activity classification. For more information consult the file Codebook.txt.
* tidy_aggregated_data_set.txt: A mean aggregation of the previous file grouped both subject and activity.

## Main Script

As described, the main script is coded in run_analysis.R. Here we will give a brief description of what this file does

1. Features
   * It extract the names of all the features using the file UCI HAR Dataset/festures.txt
   * It finds the features corresponding to mean and standard deviation, which will be the only ones to be considered for creating the new data sets.
   * It removes () symbols and switch - to _ in order to have features more readables.
2. Activity names
   * It extract the type's of activities from UCI HAR Dataset/activity_labels.txt. These labels will replace the index activity labels of the original data  set.
3. Column names
   * A vector with all the column names of the new data sets is created. This vector contains first the subject identity followed by the
     classified activity, followed by all the features (mean and std) names.
4. Test extraction
   * The subject identity is extracted from UCI HAR Dataset/test/subject_test.txt'
   * The classified activity is extracted from UCI HAR Dataset/test/y_test.txt'
   * The features are extracted from UCI HAR Dataset/test/X_test.txt'. Only some of the columns (corresponding to mean and std) are used.
   * A single data set is formed by the concatenation of all the previous data sets.
5. Train extraction
   * Same as Test, but using the train data.
6. Merge of Train/Test data sets.
   * Both data sets are merged and the sorted by subject and activity name
7. Tidy data set
   * A tidy data set is created from the merged one, which contains a mean aggregation grouped by both subject and classified activity.
8. Files creation
   * Finally, text files are created corresponding to the global merged data set (merged_data_set.txt) and the tidy data set (tidy_aggregated_data_set.txt).
   



