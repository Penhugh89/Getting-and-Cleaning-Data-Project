Readme.md file
GC Final Project 
This project seeks to analyze the "Human Activity Recognition Using Smartphones" dataset.  The analysis is comprised of: 
i)	merging the training and test sets to create one data set;
ii)	extracting the measurements on the mean and standard deviation for each measurement;
iii)	using descriptive activity names to name the activities in the data set;
iv)	labeling the data set with appropriate descriptive variable names; and
v)	creating a second tidy data set with average values for each activity and subject.

Files
The following three files are included in the project:
•	run_analysis.R: This R script executes the data processing and analysis. It merges the training and test sets to create one data set, extracts mean and standard deviation for each measurement, names the activities in the dataset with descriptive names, appropriately labels the data set, and generates a second tidy data set.
•	CodeBook.md: This file defines the variables, the data, and the transformations which are performed during the analysis. It also provides information about the source data, the variables in the final data set, and the changes made while analyzing the data.
•	README.md: The current file being read.  It gives an overview of the project, the files included, and guidelines on how to use them.

How the Script Works
The run_analysis.R script follows the following steps:
1.	Downloads and extracts the dataset from the provided link.
2.	Reads the training and test data sets, activity labels, and subject IDs into separate data frames.
3.	Merges the training and test data sets, activity labels, and subject IDs to create a single data set.
4.	Extracts only the measurements on the mean and standard deviation for each measurement from the merged data set.
5.	Uses descriptive activity names to label the activities in the data set.
6.	Appropriately labels the data set with descriptive variable names.
7.	Creates a second independent tidy data set with the average of each variable for each activity and each subject.
8.	Writes the final tidy data set to a file named tidy_data.txt.

Getting Started
To run the analysis, follow these steps:
1.	Open the run_analysis.R script in your preferred R development environment.
2.	Set your working directory.
3.	Run the script. It will perform the required analysis and generate the tidy_data.txt file.
4.	Refer to the CodeBook.md for detailed information on the variables and data.

Additional information
The project is based on data from the Human Activity Recognition database which was built from the recordings of 30 volunteers within the age range of the volunteers is 19-48 years.  Each volunteer completed six activities of walking, walking up stairs, walking down stairs, sitting, standing and laying, while wearing a waist-mounted Samsung Galaxy S II smartphone.  Each smartphone had inertial sensors (accelerometer and gyroscope) embedded in it.  The data was collected while the 30 volunteers were performing the six activities.
The database was created by five persons: Jorge Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.  

The primary purpose of the project is to demonstrate one’s ability to collect, work with, and clean a data set.

The primary goal of the analysis is to prepare tidy data that can be used for later analysis.
