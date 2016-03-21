## This script is for the Getting and Cleaning Data Course Project.


## Script Purpose:

    ## The purpose is to gather the "Human Activity Recognition Using Smartphones" Data Set
    ## and output two tidy datasets: 
    
    ## Dataset one is called cleanSet
    ## It combines the training and test data and cleans up the activity and variable names
    
    ## Dataset two is called meanSet
    ## It contains the average of each variable for each activity and each subject
 


## Script
## From this point on, the script contains instructions to create the two output datasets
## Please do not modify anything below this point

##-------------------------------------------------------------------------------------------------------
## Load the data
    
        ##Check that the dplyr library is installed, and if not, install it
            if(!"dplyr" %in% installed.packages())
            {
              install.packages("dplyr")
            }

    library(dplyr) ## loading the dplyr library for use in table joins

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
                    testActivities<-join(testActivitiesinit,acLabels,by=c("Activity ID"="Activity ID"))
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
                    trainActivities<-join(trainActivitiesinit,acLabels,by=c("Activity ID"="Activity ID"))
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
## Dataset Two Creation
      
      
    ## Loop through the table to get the mean values for each activity, subject, and measurement
      meanSet<-data.frame(matrix(nrow=180,ncol=1),matrix(nrow=180,ncol=1),matrix(nrow=180,ncol=66))
      colnames(meanSet)<-colnames(cleanSet)
      
      ##create table with unique activity and subject combinations
      combos<-unique(cleanSet[,1:2])
      combos<-combos[order(combos$Subject,combos$Activity),]
      count<-1
      
      
      for(i in 1:30) ## loop through each person
      {
        
        for (j in 1:6) ## loop through each activity
        {##Setting values for first two non-numeric columns
        meanSet[count,1]<-as.character(combos[count,1])
        meanSet[count,2]<-as.character(combos[count,2])
        
        ##Fill other columns with mean values
        ##meanSet[count,-1:-2]<-sapply(cleanSet[(cleanSet$Subject==combos[count,2]&&cleanSet$Activity==combos[count,1]),-1:-2],mean)
        meanSet[count,-1:-2]<-sapply(cleanSet[cleanSet$Subject==combos[count,2]&cleanSet$Activity==combos[count,1],-1:-2],mean)
        count<-count+1
        }
        
      }
  
      meanSet<-meanSet[order(as.numeric(meanSet$Subject), meanSet$Activity),]
      
      print("Dataset 2: meanSet is now ready and on display in the Data Viewer")
      View(meanSet)
      
##-------------------------------------------------------------------------------------------------------
## Navigate back to original working directory and cleanup extra objects
      setwd(currentwd)
      rm(list= ls()[!(ls() %in% c('cleanSet','meanSet'))])
      
