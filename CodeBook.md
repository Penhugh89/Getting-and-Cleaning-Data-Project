CodeBook
GC Final Project

This CodeBook provides information about the variables, data, and transformations performed in the analysis of the "Human Activity Recognition Using Smartphones" dataset.

Source Data
The source data for this analysis is the "Human Activity Recognition Using Smartphones" dataset, which was obtained from the following link: Dataset Link
The dataset consists of the following files and directories:
•	UCI HAR Dataset/ - The main directory containing the dataset files.
•	UCI HAR Dataset/activity_labels.txt - File containing the activity labels.
•	UCI HAR Dataset/features.txt - File containing the feature names.
•	UCI HAR Dataset/train/ - Directory containing the training set data.
•	UCI HAR Dataset/train/X_train.txt - File containing the training set feature measurements.
•	UCI HAR Dataset/train/y_train.txt - File containing the training set activity labels.
•	UCI HAR Dataset/train/subject_train.txt - File containing the subject IDs for the training set.
•	UCI HAR Dataset/test/ - Directory containing the test set data.
•	UCI HAR Dataset/test/X_test.txt - File containing the test set feature measurements.
•	UCI HAR Dataset/test/y_test.txt - File containing the test set activity labels.
•	UCI HAR Dataset/test/subject_test.txt - File containing the subject IDs for the test set.
More detailed information about the source data can be obtained from the README.txt file provided within the dataset.

Variables
The final tidy data set that was obtained after performing the analysis, comprises of the following variables:
1.	subject_id: This identifier indicates the ID of the subject who performed the activity. It ranges from 1 to 30.
2.	activity: This factor variable represents the type of activity performed by the subject. It can have the following levels:
o	WALKING
o	WALKING_UPSTAIRS
o	WALKING_DOWNSTAIRS
o	SITTING
o	STANDING
o	LAYING
2.	The remaining variables represent the average values of specific measurements on the mean and standard deviation of the sensor signals. The variable names follow the pattern measurementAxis, where measurement is the name of the measurement, and Axis denotes the axis of the measurement (e.g., tBodyAcc-mean()-X, fBodyGyro-std()-Z, etc.).
A detailed description of each measurement, can be obtained from the features_info.txt file that was provided within the dataset.

Transformations
The following transformations were performed on the source data to obtain the final tidy data set:
1.	The training and test sets were merged to create a single data set.
2.	Only the measurements on the mean and standard deviation were extracted from the merged data set.
3.	Descriptive activity names were used to label the activities in the data set.
4.	The data set was appropriately labeled with descriptive variable names.
5.	From the labeled data set, a second independent tidy data set was created. It contains the average values of each variable for each activity and each subject.
The specific implementation details of these transformations can be obtained from the run_analysis.R script.
An overview of the variables, data, and transformations used in the analysis is provided in this CodeBook.  The script and its corresponding comments give more detailed information, including the specific implementation in R. 
