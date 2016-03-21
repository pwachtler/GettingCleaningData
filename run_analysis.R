## This script is for the Getting and Cleaning Data Course Project.


## Script Purpose:

    ## The purpose is to gather the "Human Activity Recognition Using Smartphones" Data Set
    ## and output two tidy datasets: 
    
    ## Dataset one is called cleanSet
    ## It combines the training and test data and cleans up the activity and variable names
    
    ## Dataset two is called meanSet
    ## It contains the average of each variable for each activity and each subject


## Getting Started:
  
    ## In order to begin, please download the UCI HAR dataset zip folder to your computer:
    ## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    
    ## Once you have downloaded the zipped folder, make sure to extract all of the files to the folder
    ## you wish to use for your working directory.

    ## After you have unzipped the files, please change the working directory for your R session
    ## to the folder that now contains the unzipped UCI HAR files using the setwd() command
    ## If you need help with setting your working directory, please type ?setwd into your R console


## Script
## From this point on, the script contains instructions to create the two output datasets

##-------------------------------------------------------------------------------------------------------
## Load the data
    
    ##Change the working directory to go down a level to retrieve the necessary files
        currentwd<-getwd()
        setwd("UCI HAR Dataset")
        
    ##Load the column headers
    ##Note that the actual header names are in the second column of the file
        colHeaders<-read.table("features.txt")
        
    ##Load the activity labels
        acLabels<-read.table("activity_labels.txt")
        colnames(acLabels)<-c("Activity ID","Activity")
         

    ##Load the test data
        setwd("test")
        testTableinit<-read.table("X_test.txt") ##base test data
        testActivitiesinit<-read.table("y_test.txt") ##test activity data
        testSubs<-read.table("subject_test.txt") ##test subjects
        ##test activity data
        setwd("..")

        
     ##Load the training data
        setwd("train")
        trainTableinit<-read.table("X_train.txt") ##base training data
        trainActivitiesinit<-read.table("y_train.txt") ##training activity data
        trainSubs<-read.table("subject_train.txt")  ##train subjects
        setwd("..")
        
##-------------------------------------------------------------------------------------------------------
## Dataset One Creation
    ## Creating the test and training tables
        
            
        ## Test Table compilation
            
                ##Adding column names to Test table
                testTablebase<-testTableinit
                colnames(testTablebase)<-colHeaders[,2]
                
                ## Merge test activities with activity values
                    
                    ##Add column name to test activity table
                    colnames(testActivitiesinit)<-"Activity ID"
                    
                    ##Merge test activity table with activity labels table
                    testActivities<-merge(testActivitiesinit,acLabels,by.x="Activity ID", by.y="Activity ID")
                    testActivities<-testActivities[,2]  ## Removes Activity IDs
                    
                    
                    
                ## Pare down test table to only columns for mean or standard deviation calculations
                    meansdCols<-grep("mean|std",colnames(testTablebase))
                    testTablepare<-testTablebase[,meansdCols]
                    
                    ##Removing MeanFreq columns since only mean is required
                    freqLoc<-grep("Freq",colnames(testTablepare))
                    testTablepare<-testTablepare[,-freqLoc]
                    
                    
                ## Merge test subjects with test table and test activities
                    colnames(testSubs)<-"Subject"
                    testTablefinal<-cbind(testActivities, testSubs,testTablepare)
                    colnames(testTablefinal)[colnames(testTablefinal)=="testActivities"]<-"Activity"  ##Renames final column to be in line with training table final column
                    
                    
            
            
        ## Training Table compilation
                
                ##Adding column names to Training table    
                trainTablebase<-trainTableinit
                colnames(trainTablebase)<-colHeaders[,2]
                
                ## Merge training activities with activity values
                
                    ##Add column name to test activity labels table
                    colnames(trainActivitiesinit)<-"Activity ID"
                    
                    ##Merge training activity table with activity labels table
                    trainActivities<-merge(trainActivitiesinit,acLabels,by.x="Activity ID", by.y="Activity ID")
                    trainActivities<-trainActivities[,2]  ## Removes Activity IDs
                    
                    
                ## Pare down training table to only columns for mean or standard deviation calculations
                meansdCols2<-grep("mean|std",colnames(trainTablebase))
                trainTablepare<-trainTablebase[,meansdCols2]
                  
                  ##Removing MeanFreq columns since only mean is required
                    freqLoc2<-grep("Freq",colnames(trainTablepare))
                    trainTablepare<-trainTablepare[,-freqLoc2]
                
                ## Merge training subjects with training table and training activities
                colnames(trainSubs)<-"Subject"
                trainTablefinal<-cbind(trainActivities, trainSubs,trainTablepare)
                colnames(trainTablefinal)[colnames(trainTablefinal)=="trainActivities"]<-"Activity"  ##Renames final column to be in line with training table final column
                
    ## Merge the training and test data sets
      cleanSet<-rbind(testTablefinal,trainTablefinal)
      cleanSet<-cleanSet[order(as.numeric(row.names(cleanSet))),]
      print("Dataset 1: cleanSet is now ready")
      

##-------------------------------------------------------------------------------------------------------
## Dataset TWO Creation
      
      
    ## Loop through the table to get the mean values for each activity, subject, and measurement
      meanSet<-data.frame(matrix(nrow=30,ncol=1),matrix(nrow=30,ncol=1),matrix(nrow=30,ncol=66))
      colnames(meanSet)<-colnames(cleanSet)
      
      ##create table with unique activity and subject combinations
      combos<-unique(cleanSet[,1:2])
      
      
      for(i in 1:30)
      {
        
        ##Setting values for first two non-numeric columns
        meanSet[i,1]<-as.character(combos[i,1])
        meanSet[i,2]<-as.character(combos[i,2])
        
        ##Fill other columns with mean values
        meanSet[i,-1:-2]<-sapply(cleanSet[cleanSet$Subject==combos[i,2],-1:-2],mean)
        
      }
  
      meanSet<-meanSet[order(meanSet$Activity,meanSet$Subject),]
      
      print("Dataset 2: meanSet is now ready")
      
##-------------------------------------------------------------------------------------------------------
## Navigate back to original working directory and cleanup extra objects
      setwd(currentwd)
      rm(list= ls()[!(ls() %in% c('cleanSet','meanSet'))])
      