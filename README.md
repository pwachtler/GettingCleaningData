==================================================================
Getting and Cleaning Data Course Project README File

March 21, 2016

README prepared by Paul Wachtler

==================================================================

	This README file explains the scripts and dataset used to satisfy the requirements of the Getting and Cleaning Data Course Project.
	Instructions for the course project can be found here: https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project


==================================================================
	Dataset:
		The dataset used for this project is the "Human Activity Recognition Using Smartphones Dataset".

		Below is a citation for the dataset:
		Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


==================================================================
	Script Output:
		The script creates two datasets:
			1) cleanSet - It combines the training and test data and cleans up the activity and variable names
			2) meanSet - It contains the average of each variable for each activity and each subject


==================================================================
	Instructions:

		Please follow these instructions to properly store the data on your computer and then successfully run the script:

			1) Download the dataset here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

			2) Unzip the dataset folder and store locally on your computer

			3) Navigate to the run_analysis.R script here: https://github.com/pwachtler/GettingCleaningData/blob/master/run_analysis.R

			4) Click on "Raw" in the top right above the script text

			5) Right click the text and select "Save as..."

			6) Save the run_analysis.R script to the same folder that you saved the unzipped dataset folder
				Important: When saving the script, make sure to delete any file extensions after the .R,
				you want to make sure it saves as a .R script file

			7) Open your R console

			8) Change your working directory to the folder that contains the dataset and the script
				- use the setwd() command for this
				- use ?setwd to view its help page if you are unfamiliar with this command

			9) Source the script with the following command: source ("run_analysis.R")

			10) The cleanSet and meanSet datasets will be returned by the script

==================================================================

	The dataset includes the following files:
		
		- 'README.txt' - this is the readme file that comes with the dataset.

		- 'features_info.txt': Shows information about the variables used on the feature vector.

		- 'features.txt': Lists of all features.

		- 'activity_labels.txt': Links the class labels with their activity name.

		- 'train/X_train.txt': Training set.

		- 'train/y_train.txt': Training labels.

		- 'test/X_test.txt': Test set.

		- 'test/y_test.txt': Test labels.

		- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

		- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


		NOTE:
			- All files in the 'test/Inertial Signals' and 'train/Inertial signals' folders are not used for this project
