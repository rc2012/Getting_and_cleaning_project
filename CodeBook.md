---
title: "CodeBook"
author: "rc2012"
date: "October 21, 2015"
output: html_document
---
## THis is a code book for the Course Project for Getting and Cleaning Data.

From the original data set information about the experiment:
The experiments have been carried out with a group of 30 volunteers     within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyrosome-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyrosomeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyrosomeMagnitude, timeBodyGyrosomeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FFTBodyAccelerometer-XYZ, FFTBodyAccelerometerJerk-XYZ, FFTBodyGyrosome-XYZ, FFTBodyAccelerometerJerkMagnitude, FFTBodyGyrosomeMagnitude, FFTBodyGyrosomeJerkMagnitude. (Note the 'FFT' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean(): Mean value
std(): Standard deviation

activity - one of the 6 activities the subject was doing at the time:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

subjectid - the volunteer's id number

List of variables in the tidy data set

timeBodyAccelerometer-mean()-X              
timeBodyAccelerometer-mean()-Y              
timeBodyAccelerometer-mean()-Z              
timeGravityAccelerometer-mean()-X           
timeGravityAccelerometer-mean()-Y           
timeGravityAccelerometer-mean()-Z           
timeBodyAccelerometerJerk-mean()-X          
timeBodyAccelerometerJerk-mean()-Y          
timeBodyAccelerometerJerk-mean()-Z          
timeBodyGyrosome-mean()-X                   
timeBodyGyrosome-mean()-Y                   
timeBodyGyrosome-mean()-Z                   
timeBodyGyrosomeJerk-mean()-X               
timeBodyGyrosomeJerk-mean()-Y               
timeBodyGyrosomeJerk-mean()-Z               
timeBodyAccelerometerMagnitude-mean()       
timeGravityAccelerometerMagnitude-mean()    
timeBodyAccelerometerJerkMagnitude-mean()   
timeBodyGyrosomeMagnitude-mean()            
timeBodyGyrosomeJerkMagnitude-mean()        
FFTBodyAccelerometer-mean()-X               
FFTBodyAccelerometer-mean()-Y               
FFTBodyAccelerometer-mean()-Z               
FFTBodyAccelerometer-meanFreq()-X           
FFTBodyAccelerometer-meanFreq()-Y           
FFTBodyAccelerometer-meanFreq()-Z           
FFTBodyAccelerometerJerk-mean()-X           
FFTBodyAccelerometerJerk-mean()-Y           
FFTBodyAccelerometerJerk-mean()-Z           
FFTBodyAccelerometerJerk-meanFreq()-X       
FFTBodyAccelerometerJerk-meanFreq()-Y       
FFTBodyAccelerometerJerk-meanFreq()-Z       
FFTBodyGyrosome-mean()-X                    
FFTBodyGyrosome-mean()-Y                    
FFTBodyGyrosome-mean()-Z                    
FFTBodyGyrosome-meanFreq()-X                
FFTBodyGyrosome-meanFreq()-Y                
FFTBodyGyrosome-meanFreq()-Z                
FFTBodyAccelerometerMagnitude-mean()        
FFTBodyAccelerometerMagnitude-meanFreq()    
FFTBodyAccelerometerJerkMagnitude-mean()    
FFTBodyAccelerometerJerkMagnitude-meanFreq()
FFTBodyGyrosomeMagnitude-mean()             
FFTBodyGyrosomeMagnitude-meanFreq()         
FFTBodyGyrosomeJerkMagnitude-mean()         
FFTBodyGyrosomeJerkMagnitude-meanFreq()     
timeBodyAccelerometer-std()-X               
timeBodyAccelerometer-std()-Y               
timeBodyAccelerometer-std()-Z               
timeGravityAccelerometer-std()-X            
timeGravityAccelerometer-std()-Y          
timeGravityAccelerometer-std()-Z            
timeBodyAccelerometerJerk-std()-X           
timeBodyAccelerometerJerk-std()-Y           
timeBodyAccelerometerJerk-std()-Z           
timeBodyGyrosome-std()-X                    
timeBodyGyrosome-std()-Y                    
timeBodyGyrosome-std()-Z                    
timeBodyGyrosomeJerk-std()-X                
timeBodyGyrosomeJerk-std()-Y                
timeBodyGyrosomeJerk-std()-Z                
timeBodyAccelerometerMagnitude-std()        
timeGravityAccelerometerMagnitude-std()     
timeBodyAccelerometerJerkMagnitude-std()    
timeBodyGyrosomeMagnitude-std()             
timeBodyGyrosomeJerkMagnitude-std()         
FFTBodyAccelerometer-std()-X                
FFTBodyAccelerometer-std()-Y                
FFTBodyAccelerometer-std()-Z                
FFTBodyAccelerometerJerk-std()-X            
FFTBodyAccelerometerJerk-std()-Y            
FFTBodyAccelerometerJerk-std()-Z            
FFTBodyGyrosome-std()-X                     
FFTBodyGyrosome-std()-Y                     
FFTBodyGyrosome-std()-Z                     
FFTBodyAccelerometerMagnitude-std()         
FFTBodyAccelerometerJerkMagnitude-std()     
FFTBodyGyrosomeMagnitude-std()              
FFTBodyGyrosomeJerkMagnitude-std()          
activity                                    
subjectid          

The script run_analysis.R does the following:

*reads in test data saved in X_test.txt
*reads in train data saved in X_train.txt
*reads in the activity associated with each row for test data y_test.txt
*reads in the activity associated with each row for train data y_test.txt
*reads in the subject id associated with each row for test data subject_test.txt
*reads in the subject id associated with each row for train data subject_train.txt
*reads the variable names for the columns saved in features.txt
*add column names from features to test and train data frames
*adds corresponding subject ids and activity ids to each row in test and train data frames
*merges train and test data frames into one data frame
*creates a new data set containing mean and std variables
*add subjectid and activity to the new data frame
*replaces 1-6 with corresponding activity labels found in activity_labels.txt
*renames variables to be more readable
*create a new data frame containig the means of variables by subject id and activity
*saves this data frame in a text file called tidydata.txt


