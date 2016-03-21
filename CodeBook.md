Getting and Cleaning Data Course Project Code Book
March 21, 2016
Code book prepared by Paul Wachtler


Table: cleanSet
	
	Purpose: 
	This is the first dataset required for the Course Project.  It combines the training and test datasets and cleans up the activity and variable names.

	Transformations:
	The following transformations were performed to clean this dataset:
		1) Merged the training and test datasets
		2) Added the column names
		3) Extracted only the mean and standard deviation columns
		4) Matched the Activity Names against the Activity Labels
		5) Appended the Activity Names column to the cleanSet table
		6) Appended the Subject Numbers column to the cleanSet table


Number of Variables: 68
Number of Records: 10,299


Variables in cleanSet:

Activity	
	: Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 …
	: Activity Name
	
Subject	
	: int  2 2 2 2 2 2 2 2 2 2 ...
	: Subject Number
	
tBodyAcc-mean()-X	
	: num  0.257 0.286 0.275 0.27 0.275 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial X
	
tBodyAcc-mean()-Y	
	: num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial Y
	
tBodyAcc-mean()-Z	
	: num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial Z
	
tBodyAcc-std()-X	
	: num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial X
	
tBodyAcc-std()-Y	
	: num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial Y
	
tBodyAcc-std()-Z	
	: num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial Z
	
tGravityAcc-mean()-X	
	: num  0.936 0.927 0.93 0.929 0.927 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial X
	
tGravityAcc-mean()-Y	
	: num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial Y
	
tGravityAcc-mean()-Z	
	: num  0.115 0.153 0.146 0.143 0.138 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial Z
	
tGravityAcc-std()-X	
	: num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial X
	
tGravityAcc-std()-Y	
	: num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial Y
	
tGravityAcc-std()-Z	
	: num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial Z
	
tBodyAccJerk-mean()-X	
	: num  0.072 0.0702 0.0694 0.0749 0.0784 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial X
	
tBodyAccJerk-mean()-Y	
	: num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial Y
	
tBodyAccJerk-mean()-Z	
	: num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial Z
	
tBodyAccJerk-std()-X	
	: num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial X
	
tBodyAccJerk-std()-Y	
	: num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial Y
	
tBodyAccJerk-std()-Z	
	: num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial Z
	
tBodyGyro-mean()-X	
	: num  0.11998 -0.00155 -0.04821 -0.05664 -0.05999 ...
	: Mean of the Time Domain Gyroscope Body Signals for Axial X
	
tBodyGyro-mean()-Y	
	: num  -0.0918 -0.1873 -0.1663 -0.126 -0.0847 ...
	: Mean of the Time Domain Gyroscope Body Signals for Axial Y
	
tBodyGyro-mean()-Z	
	: num  0.1896 0.1807 0.1542 0.1183 0.0787 ...
	: Mean of the Time Domain Body Gyroscope Body Signals for Axial Z
	
tBodyGyro-std()-X	
	: num  -0.883 -0.926 -0.973 -0.968 -0.975 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial X
	
tBodyGyro-std()-Y	
	: num  -0.816 -0.93 -0.979 -0.975 -0.978 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial Y
	
tBodyGyro-std()-Z	
	: num  -0.941 -0.968 -0.976 -0.963 -0.968 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial Z
	
tBodyGyroJerk-mean()-X	
	: num  -0.2049 -0.1387 -0.0978 -0.1022 -0.0918 ...
	: Mean of the Time Domain Gyroscope Body Jerk Signals for Axial X
	
tBodyGyroJerk-mean()-Y	
	: num  -0.1745 -0.0258 -0.0342 -0.0447 -0.029 ...
	: Mean of the Time Domain Gyroscope Body Jerk Signals for Axial Y
	
tBodyGyroJerk-mean()-Z	
	: num  -0.0934 -0.0714 -0.06 -0.0534 -0.0612 ...
	: Mean of the Time Domain Body Gyroscope Body Jerk Signals for Axial Z
	
tBodyGyroJerk-std()-X	
	: num  -0.901 -0.962 -0.984 -0.984 -0.988 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial X
	
tBodyGyroJerk-std()-Y	
	: num  -0.911 -0.956 -0.988 -0.99 -0.992 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial Y
	
tBodyGyroJerk-std()-Z	
	: num  -0.939 -0.981 -0.976 -0.981 -0.982 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial Z
	
tBodyAccMag-mean()	
	: num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
	: Mean of the Magnitude of the Time Domain Body Acceleration Signals
	
tBodyAccMag-std()	
	: num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
	: Standard Deviation of the Magnitude of the Time Domain Body Acceleration Signals
	
tGravityAccMag-mean()	
	: num  -0.867 -0.969 -0.976 -0.974 -0.976 ...
	: Mean of the Magnitude of the Time Domain Gravity Acceleration Signals
	
tGravityAccMag-std()	
	: num  -0.705 -0.954 -0.979 -0.977 -0.977 ...
	: Standard Deviation of the Magnitude of the Time Domain Gravity Acceleration Signals
	
tBodyAccJerkMag-mean()	
	: num  -0.93 -0.974 -0.982 -0.983 -0.987 ...
	: Mean of the Magnitude of the Time Domain Body Acceleration Jerk Signals
	
tBodyAccJerkMag-std()	
	: num  -0.896 -0.941 -0.971 -0.975 -0.989 ...
	: Standard Deviation of the Magnitude of the Time Domain Body Acceleration Jerk Signals
	
tBodyGyroMag-mean()	
	: num  -0.796 -0.898 -0.939 -0.947 -0.957 ...
	: Mean of the Magnitude of the Time Domain Gyroscope Body Acceleration Signals
	
tBodyGyroMag-std()	
	: num  -0.762 -0.911 -0.972 -0.97 -0.969 ...
	: Standard Deviation of the Magnitude of the Time Domain Gyroscope Body Acceleration Signals
	
tBodyGyroJerkMag-mean()	
	: num  -0.925 -0.973 -0.987 -0.989 -0.99 ...
	: Mean of the Magnitude of the Time Domain Gyroscope Body Acceleration Jerk Signals
	
tBodyGyroJerkMag-std()	
	: num  -0.894 -0.944 -0.984 -0.986 -0.99 ...
	: Standard Deviation of the Magnitude of the Time Domain Gyroscope Body Acceleration Jerk Signals
	
fBodyAcc-mean()-X	
	: num  -0.919 -0.961 -0.992 -0.993 -0.992 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial X
	
fBodyAcc-mean()-Y	
	: num  -0.918 -0.964 -0.965 -0.968 -0.969 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial Y
	
fBodyAcc-mean()-Z	
	: num  -0.789 -0.957 -0.967 -0.967 -0.98 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial Z
	
fBodyAcc-std()-X	
	: num  -0.948 -0.984 -0.995 -0.996 -0.995 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial X
	
fBodyAcc-std()-Y	
	: num  -0.925 -0.97 -0.974 -0.977 -0.967 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial Y
	
fBodyAcc-std()-Z	
	: num  -0.636 -0.942 -0.962 -0.969 -0.978 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial Z
	
fBodyAccJerk-mean()-X	
	: num  -0.9 -0.944 -0.991 -0.991 -0.991 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial X
	
fBodyAccJerk-mean()-Y	
	: num  -0.937 -0.969 -0.973 -0.972 -0.98 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial Y
	
fBodyAccJerk-mean()-Z	
	: num  -0.924 -0.973 -0.972 -0.97 -0.983 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial Z
	
fBodyAccJerk-std()-X	
	: num  -0.924 -0.962 -0.992 -0.992 -0.994 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial X
	
fBodyAccJerk-std()-Y	
	: num  -0.943 -0.98 -0.971 -0.975 -0.979 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial Y
	
fBodyAccJerk-std()-Z	
	: num  -0.948 -0.981 -0.972 -0.981 -0.989 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial Z
	
fBodyGyro-mean()-X	
	: num  -0.824 -0.923 -0.973 -0.972 -0.976 ...
	: Mean of the Frequency Domain Gyroscope Body Signals for Axial X
	
fBodyGyro-mean()-Y	
	: num  -0.808 -0.926 -0.981 -0.981 -0.98 ...
	: Mean of the Frequency Domain Gyroscope Body Signals for Axial Y
	
fBodyGyro-mean()-Z	
	: num  -0.918 -0.968 -0.972 -0.967 -0.969 ...
	: Mean of the Frequency Domain Body Gyroscope Body Signals for Axial Z
	
fBodyGyro-std()-X	
	: num  -0.903 -0.927 -0.973 -0.967 -0.974 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial X
	
fBodyGyro-std()-Y	
	: num  -0.823 -0.932 -0.977 -0.972 -0.977 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial Y
	
fBodyGyro-std()-Z	
	: num  -0.956 -0.97 -0.979 -0.965 -0.97 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial Z
	
fBodyAccMag-mean()	
	: num  -0.791 -0.954 -0.976 -0.973 -0.978 ...
	: Mean of the Magnitude of the Frequency Domain Body Acceleration Signals
	
fBodyAccMag-std()	
	: num  -0.711 -0.96 -0.984 -0.982 -0.979 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Body Acceleration Signals
	
fBodyBodyAccJerkMag-mean()	
	: num  -0.895 -0.945 -0.971 -0.972 -0.987 ...
	: Mean of the Magnitude of the Frequency Domain Body Acceleration Jerk Signals
	
fBodyBodyAccJerkMag-std()	
	: num  -0.896 -0.934 -0.97 -0.978 -0.99 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Body Acceleration Jerk Signals
	
fBodyBodyGyroMag-mean()	
	: num  -0.771 -0.924 -0.975 -0.976 -0.977 ...
	: Mean of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Signals
	
fBodyBodyGyroMag-std()	
	: num  -0.797 -0.917 -0.974 -0.971 -0.97 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Signals
	
fBodyBodyGyroJerkMag-mean()	
	: num  -0.89 -0.952 -0.986 -0.986 -0.99 ...
	: Mean of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Jerk Signals
	
fBodyBodyGyroJerkMag-std()	
	: num  -0.907 -0.938 -0.983 -0.986 -0.991 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Jerk Signals

------------------------------------------------------------------------------------------------------------------


Table: meanSet
	
	Purpose: 
	This is the second dataset required for the Course Project.  It It contains the average of each variable for each activity and each subject

	Transformations:
	The mean for each measurement was recorded for each combination of Activity and Subject.
	Each column in the meanSet dataset contains the resulting mean value for that record's (row's) combination of Activity and Subject.


Number of Variables: 68
Number of Records: 30


Variables in meanSet:

Activity	
	: chr "LAYING" "LAYING" "SITTING" "SITTING" ...
	: Activity Name
	
Subject	
	: chr "20" "24" "12" "13" ...
	: Subject Number
	
tBodyAcc-mean()-X	
	: num 0.268 0.277 0.274 0.276 0.274 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial X
	
tBodyAcc-mean()-Y	
	: num -0.0176 -0.0177 -0.0183 -0.0177 -0.0175 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial Y
	
tBodyAcc-mean()-Z	
	: num -0.108 -0.108 -0.107 -0.109 -0.109 ...
	: Mean of the Time Domain Body Acceleration Signals for Axial Z
	
tBodyAcc-std()-X	
	: num -0.605 -0.675 -0.584 -0.625 -0.608 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial X
	
tBodyAcc-std()-Y	
	: num -0.369 -0.582 -0.522 -0.449 -0.567 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial Y
	
tBodyAcc-std()-Z	
	: num -0.635 -0.636 -0.699 -0.587 -0.661 ...
	: Standard Deviation of the Time Domain Body Acceleration Signals for Axial Z
	
tGravityAcc-mean()-X	
	: num 0.628 0.695 0.699 0.71 0.699 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial X
	
tGravityAcc-mean()-Y	
	: num -0.0373 0.073 0.03 -0.0421 -0.0137 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial Y
	
tGravityAcc-mean()-Z	
	: num 0.1072 0.0623 0.033 0.0443 -0.0177 ...
	: Mean of the Time Domain Gravity Acceleration Signals for Axial Z
	
tGravityAcc-std()-X	
	: num -0.958 -0.975 -0.967 -0.967 -0.972 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial X
	
tGravityAcc-std()-Y	
	: num -0.953 -0.961 -0.961 -0.954 -0.959 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial Y
	
tGravityAcc-std()-Z	
	: num -0.941 -0.956 -0.947 -0.939 -0.949 ...
	: Standard Deviation of the Time Domain Gravity Acceleration Signals for Axial Z
	
tBodyAccJerk-mean()-X	
	: num 0.0798 0.0785 0.0704 0.0794 0.0814 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial X
	
tBodyAccJerk-mean()-Y	
	: num 0.00221 0.00397 0.00531 0.00388 0.00849 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial Y
	
tBodyAccJerk-mean()-Z	
	: num -0.004506 -0.00701 0.000308 -0.012349 0.002703 ...
	: Mean of the Time Domain Body Acceleration Jerk Signals for Axial Z
	
tBodyAccJerk-std()-X	
	: num -0.627 -0.74 -0.582 -0.639 -0.683 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial X
	
tBodyAccJerk-std()-Y	
	: num -0.527 -0.686 -0.571 -0.57 -0.669 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial Y
	
tBodyAccJerk-std()-Z	
	: num -0.747 -0.736 -0.793 -0.728 -0.813 ...
	: Standard Deviation of the Time Domain Body Acceleration Jerk Signals for Axial Z
	
tBodyGyro-mean()-X	
	: num -0.0242 -0.0213 -0.0629 -0.0562 -0.0147 ...
	: Mean of the Time Domain Gyroscope Body Signals for Axial X
	
tBodyGyro-mean()-Y	
	: num -0.0789 -0.0782 -0.0592 -0.0617 -0.0827 ...
	: Mean of the Time Domain Gyroscope Body Signals for Axial Y
	
tBodyGyro-mean()-Z	
	: num 0.0856 0.0842 0.0961 0.0989 0.077 ...
	: Mean of the Time Domain Body Gyroscope Body Signals for Axial Z
	
tBodyGyro-std()-X	
	: num -0.685 -0.776 -0.728 -0.715 -0.759 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial X
	
tBodyGyro-std()-Y	
	: num -0.574 -0.763 -0.735 -0.646 -0.765 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial Y
	
tBodyGyro-std()-Z	
	: num -0.527 -0.708 -0.671 -0.643 -0.721 ...
	: Standard Deviation of the Time Domain Gyroscope Body Signals for Axial Z
	
tBodyGyroJerk-mean()-X	
	: num -0.095 -0.0998 -0.0731 -0.0881 -0.1079 ...
	: Mean of the Time Domain Gyroscope Body Jerk Signals for Axial X
	
tBodyGyroJerk-mean()-Y	
	: num -0.0414 -0.0391 -0.0437 -0.0441 -0.0392 ...
	: Mean of the Time Domain Gyroscope Body Jerk Signals for Axial Y
	
tBodyGyroJerk-mean()-Z	
	: num -0.0543 -0.0553 -0.0575 -0.0583 -0.0508 ...
	: Mean of the Time Domain Body Gyroscope Body Jerk Signals for Axial Z
	
tBodyGyroJerk-std()-X	
	: num -0.698 -0.764 -0.71 -0.716 -0.788 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial X
	
tBodyGyroJerk-std()-Y	
	: num -0.684 -0.793 -0.811 -0.719 -0.826 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial Y
	
tBodyGyroJerk-std()-Z	
	: num -0.637 -0.797 -0.749 -0.713 -0.808 ...
	: Standard Deviation of the Time Domain Gyroscope Body Jerk Signals for Axial Z
	
tBodyAccMag-mean()	
	: num -0.517 -0.62 -0.56 -0.54 -0.568 ...
	: Mean of the Magnitude of the Time Domain Body Acceleration Signals
	
tBodyAccMag-std()	
	: num -0.572 -0.651 -0.574 -0.597 -0.636 ...
	: Standard Deviation of the Magnitude of the Time Domain Body Acceleration Signals
	
tGravityAccMag-mean()	
	: num -0.517 -0.62 -0.56 -0.54 -0.568 ...
	: Mean of the Magnitude of the Time Domain Gravity Acceleration Signals
	
tGravityAccMag-std()	
	: num -0.572 -0.651 -0.574 -0.597 -0.636 ...
	: Standard Deviation of the Magnitude of the Time Domain Gravity Acceleration Signals
	
tBodyAccJerkMag-mean()	
	: num -0.62 -0.714 -0.63 -0.625 -0.696 ...
	: Mean of the Magnitude of the Time Domain Body Acceleration Jerk Signals
	
tBodyAccJerkMag-std()	
	: num -0.589 -0.689 -0.566 -0.61 -0.694 ...
	: Standard Deviation of the Magnitude of the Time Domain Body Acceleration Jerk Signals
	
tBodyGyroMag-mean()	
	: num -0.517 -0.682 -0.632 -0.581 -0.676 ...
	: Mean of the Magnitude of the Time Domain Gyroscope Body Acceleration Signals
	
tBodyGyroMag-std()	
	: num -0.58 -0.743 -0.685 -0.636 -0.75 ...
	: Standard Deviation of the Magnitude of the Time Domain Gyroscope Body Acceleration Signals
	
tBodyGyroJerkMag-mean()	
	: num -0.684 -0.792 -0.777 -0.713 -0.81 ...
	: Mean of the Magnitude of the Time Domain Gyroscope Body Acceleration Jerk Signals
	
tBodyGyroJerkMag-std()	
	: num -0.684 -0.789 -0.786 -0.712 -0.825 ...
	: Standard Deviation of the Magnitude of the Time Domain Gyroscope Body Acceleration Jerk Signals
	
fBodyAcc-mean()-X	
	: num -0.613 -0.708 -0.579 -0.639 -0.652 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial X
	
fBodyAcc-mean()-Y	
	: num -0.426 -0.612 -0.523 -0.493 -0.602 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial Y
	
fBodyAcc-mean()-Z	
	: num -0.665 -0.656 -0.727 -0.63 -0.719 ...
	: Mean of the Frequency Domain Body Acceleration Signals for Axial Z
	
fBodyAcc-std()-X	
	: num -0.603 -0.664 -0.587 -0.621 -0.594 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial X
	
fBodyAcc-std()-Y	
	: num -0.382 -0.595 -0.553 -0.463 -0.577 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial Y
	
fBodyAcc-std()-Z	
	: num -0.648 -0.655 -0.71 -0.599 -0.657 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Signals for Axial Z
	
fBodyAccJerk-mean()-X	
	: num -0.652 -0.752 -0.599 -0.66 -0.717 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial X
	
fBodyAccJerk-mean()-Y	
	: num -0.558 -0.704 -0.591 -0.603 -0.695 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial Y
	
fBodyAccJerk-mean()-Z	
	: num -0.733 -0.72 -0.775 -0.711 -0.803 ...
	: Mean of the Frequency Domain Body Acceleration Jerk Signals for Axial Z
	
fBodyAccJerk-std()-X	
	: num -0.635 -0.751 -0.603 -0.65 -0.677 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial X
	
fBodyAccJerk-std()-Y	
	: num -0.526 -0.688 -0.579 -0.562 -0.663 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial Y
	
fBodyAccJerk-std()-Z	
	: num -0.761 -0.752 -0.809 -0.745 -0.823 ...
	: Standard Deviation of the Frequency Domain Body Acceleration Jerk Signals for Axial Z
	
fBodyGyro-mean()-X	
	: num -0.626 -0.723 -0.661 -0.659 -0.729 ...
	: Mean of the Frequency Domain Gyroscope Body Signals for Axial X
	
fBodyGyro-mean()-Y	
	: num -0.591 -0.754 -0.745 -0.647 -0.775 ...
	: Mean of the Frequency Domain Gyroscope Body Signals for Axial Y
	
fBodyGyro-mean()-Z	
	: num -0.518 -0.709 -0.657 -0.62 -0.727 ...
	: Mean of the Frequency Domain Body Gyroscope Body Signals for Axial Z
	
fBodyGyro-std()-X	
	: num -0.704 -0.794 -0.75 -0.735 -0.77 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial X
	
fBodyGyro-std()-Y	
	: num -0.568 -0.772 -0.733 -0.651 -0.761 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial Y
	
fBodyGyro-std()-Z	
	: num -0.575 -0.736 -0.708 -0.686 -0.745 ...
	: Standard Deviation of the Frequency Domain Gyroscope Body Signals for Axial Z
	
fBodyAccMag-mean()	
	: num -0.56 -0.65 -0.559 -0.59 -0.646 ...
	: Mean of the Magnitude of the Frequency Domain Body Acceleration Signals
	
fBodyAccMag-std()	
	: num -0.648 -0.706 -0.651 -0.665 -0.688 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Body Acceleration Signals
	
fBodyBodyAccJerkMag-mean()	
	: num -0.585 -0.697 -0.564 -0.607 -0.698 ...
	: Mean of the Magnitude of the Frequency Domain Body Acceleration Jerk Signals
	
fBodyBodyAccJerkMag-std()	
	: num -0.597 -0.682 -0.572 -0.617 -0.693 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Body Acceleration Jerk Signals
	
fBodyBodyGyroMag-mean()	
	: num -0.607 -0.754 -0.717 -0.652 -0.769 ...
	: Mean of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Signals
	
fBodyBodyGyroMag-std()	
	: num -0.636 -0.782 -0.719 -0.692 -0.782 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Signals
	
fBodyBodyGyroJerkMag-mean()	
	: num -0.693 -0.795 -0.79 -0.712 -0.829 ...
	: Mean of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Jerk Signals
	
fBodyBodyGyroJerkMag-std()	
	: num -0.695 -0.796 -0.797 -0.733 -0.834 ...
	: Standard Deviation of the Magnitude of the Frequency Domain Gyroscope Body Acceleration Jerk Signals