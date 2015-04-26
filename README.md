# Samsung Human Activity Recognition Dataset
This repository contains a dataset that summarizes a number of
measurements made in an experiment to detect human movements from
inertial signals recorded using a smartphone on each subject's
wrist. The summaries provided are the means of time- and
frequency-domain signals sampled in the experiment, aggregated by
subject and activity. The signals themselves are means and standard
deviations of raw values recorded by the smartphone during the
experiment.

The data can be obtain from the [UCI Machine Learning Archive](http://archive.ics.uci.edu) at:

http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

However, the data used to produce the dataset in this repository were
obtained from the Coursera course "Getting and Cleaning Data" at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The file was accessed April 20, 2015 to produce the dataset included
in the repository. See the source data documentation for further
description of the original dataset.

## Contents
In addition to this README, this repository contains the following files:
* Codebook.md -- description of the variables in the summarized dataset
* subject_activity_means.txt -- contains the summarized dataset
* run_analysis.R -- contains the script necessary to produce the summarized dataset 

## Choice of variables 
This dataset was prepared for the course project in "Getting and
Cleaning Data". The instructions for the assignment said that the
dataset should comprise "only the measurements on the mean and
standard deviation for each measurement."  Upon examining the
descriptions of 561 variables contained in the original HAR dataset, I
concluded that the appropriate signals were those whose names (see
names in "features.txt" in the UCI HAR Dataset archive) contained the
strings "std()" and "mean()". This choice excludes some variables
whose names contain the string "main", but appear to be higher order
summaries of the signals derived from the raw inertial data. This
choice results in the inclusion of 66 variables (33 means, 33 standard
deviations).

## Producing the Summarized Dataset 
The "run_analysis.R" script contained in this repository will generate
the summarized dataset in the file "subject_activity_means.txt",
provided that the raw dataset has been extracted to the directory "UCI
HAR Dataset" in the working directory. The expected location of the
source data is set by the variable "data_path". The "run_analysis.R"
script depends only on base R packages. It reads in the necessary text
files from the source data, and merges the 'test' and 'train'
datasets. The variables of interest are identified and extracted from
the set of 561 observations and combined with the subject identifiers
and named activities. Finally, each of the variables of interest is
summarized by taking the mean for each combination of subject and
activity. The resulting dataset is in wide format, with 68 columns and
180 rows. See Codebook.md for a descriptin of the fields in the
summarized dataset.