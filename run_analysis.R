# run_analysis.R
# 
# Read in the Human Activity Recognition Using Smartphones Dataset, Version 1.0,
# available at:
# 
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# Read in the training and test datasets, merge them, label the variables, 
# extract means and standard deviations of the signals in the data set. The
# values retained are the ones whose names in "features.txt" contain the strings
# "mean()" or "std()". See README.md for a discussion of this choice.
# 
# Write out a tidy data set containing the means of these values aggregated by
# test subect and activity name to the file "subject_activity_means.txt".
# 
# We assume that the data have been unzipped to a directory named "UCI HAR
# Dataset" in the current working directory.

# The data and labels are contained in several text files in the directory
# "UCI HAR Dataset":
#   features.txt            --  short variable descriptors
#   activity_labels.txt     --  id to activity mapping
#   test/subject_test.txt   --  subject ids for each record in 'test'
#   test/X_test.txt         --  matrix of observations of variables in 'test'
#   test/y_test.txt         --  activity ids for each record in 'test'
#   train/subject_train.txt --  subject ids for each record in 'train'
#   train/X_train.txt       --  matrix of observations of variables in 'train'
#   train/y_train.txt       --  activity ids for each record in 'train'
#
# Read these files in and prepare to merge 'test' and 'train' datasets
data_path <- "UCI HAR Dataset"
# -- get the variable descriptors
features <- read.table(paste(data_path, "features.txt", sep="/"), 
                       colClasses=c("NULL", "character"), # skip column 1
                       col.names=c(NA, "variable"))
# -- create a logical vector to identify which variables contain a mean or
#    standard deviation of a measurement
mean_std <- grepl("mean\\(\\)", features$variable) | 
  grepl("std\\(\\)", features$variable)
# -- get the activity ids and labels
activity_map <- read.table(paste(data_path, "activity_labels.txt", sep="/"),
                           col.names=c("activity_id", "activity_name"))
# -- convert the activity names to lowerCamelCase
activity_map$activity_name <- 
  gsub('\\_(\\w?)', '\\U\\1', tolower(activity_map$activity_name), perl=T)
# -- get the subjects in 'test'
subject <- read.table(paste(data_path, "test/subject_test.txt", sep="/"),
                      col.names=c("subject_id"))
# -- get the matrix of variables in 'test'
observations <- read.table(paste(data_path, "test/X_test.txt", sep="/"))
# -- get the activity ids in 'test'
activity <- read.table(paste(data_path, "test/y_test.txt", sep="/"),
                       col.names=c("activity_id"))
# -- get the subjects in 'train' and append them to those from 'test'
subject <- rbind(subject, 
                 read.table(paste(data_path, "train/subject_train.txt", sep="/"),
                 col.names=c("subject_id")))
# -- get the matrix of variables in 'train' and append them to those from 'test'
observations <- rbind(observations, 
                      read.table(paste(data_path, "train/X_train.txt", sep="/")))
# -- get the activity ids in 'train' and append them to those from 'test'
activity <- rbind(activity,
                  read.table(paste(data_path, "train/y_train.txt", sep="/"),
                  col.names=c("activity_id")))

# Give the columns of 'observations' meaningful names. We will start with a few
# manipulations on the strings stored in 'features$variable' that will clean up
# the names and ultimately convert them to lowerCamelCase. Although the
# instructor advocated for alllowercase names in a lecture, I have a strong
# preference for readability over arbitary rules. The names that we're starting
# with are close to lowerCamelCase, so that's what I'll use.
# -- a first pass to get rid of invalid characters
features$variable <- make.names(features$variable)
# -- get rid of dots and convert to lowerCamelCase
features$variable <- gsub('\\.(\\w?)', '\\U\\1', features$variable, perl=T)
# -- name the columns in 'observations'
names(observations) <- features$variable

# Reduce the data set to the desired set of columns, then join the subject ids 
# and named activities with the observations
data <- data.frame(subject, 
                   activity=activity_map$activity_name[activity$activity_id],
                   observations[which(mean_std)])

# Get the means of all variables, aggregated by subject and activity
data.out <- aggregate(. ~ subject_id + activity, data=data, mean)

# Write the data out to a file
write.table(data.out, file="subject_activity_means.txt", row.names=FALSE)