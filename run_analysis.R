## Step 1: Set working directory

setwd("path/to/working/directory")


# Step 2: Download and unzip the UCI HAR Dataset

dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destination_folder <- "UCI HAR Dataset"

download.file(dataset_url, "dataset.zip")
unzip("dataset.zip", exdir = destination_folder)

## Step 3: Read the relevant data files

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature_name"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity_name"))

x_train <- read.table("UCI HAR Dataset/train/X_train.txt", colClasses = "numeric")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity_id")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject_id")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity_id")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject_id")

## Step 4: Merge the training and test sets

x_merged <- rbind(x_train, x_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)

## Step 5: Extract the measurements on the mean and standard deviation

mean_std_features <- grep("mean\\()|std\\()", features$feature_name)
x_mean_std <- x_merged[, mean_std_features, drop = FALSE]

## Step 6: Use descriptive activity names

activity_merged <- merge(y_merged, activity_labels, by = "activity_id", all.x = TRUE)
x_mean_std <- cbind(subject_merged, x_mean_std, activity_name = activity_merged$activity_name)

## Step 7: Label the data set with descriptive variable names

cleaned_feature_names <- gsub("\\(\\)", "", features$feature_name)
cleaned_feature_names <- gsub("-", "_", cleaned_feature_names)
names(x_mean_std) <- c("subject_id", cleaned_feature_names[mean_std_features], "activity_name")

## Step 8: Create an independent tidy data set with the average of each variable for each activity and each subject

library(dplyr)

grouped_data <- group_by(x_mean_std, subject_id, activity_name)
tidy_data <- summarise_all(grouped_data, mean)


## Step 9: Write the tidy data to a text file

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)

