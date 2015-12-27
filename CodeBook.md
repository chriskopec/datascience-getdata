# CodeBook

## Transformations

The following transformations were  performed on the dataset: 

1. The subject, activity, and feature sets were read in as tables and bound together for both the test and train datasets. The test and train tables were then bound together to produce one table. 
2. The feature variables were filtered to exclude any that did not include mean or standard deviation values. 
3. The activity variable was translated from a numeric value to an activity label defined by the activity_label.txt file. 
4. The data was grouped by subject and activity and the mean was computed for each variable within the grouped data.


## Result

The result of this function is a data.frame summarizing each subject, activity and the mean value for each variable that was collected. 


## Variables

1 - subject : a numeric identifying the subject that produced the observations.

2 - activity : a factor that identifies the activity being done by the subject when collecting data in the observation. The options for activity are the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

3:68 - mean and standard deviation variables collected during the observation. A complete list of variable names in the tidy data is here: 

"tBodyAcc.mean...X" 
"tBodyAcc.mean...Y" 
"tBodyAcc.mean...Z" 
"tBodyAcc.std...X" 
"tBodyAcc.std...Y" 
"tBodyAcc.std...Z" 
"tGravityAcc.mean...X" 
"tGravityAcc.mean...Y" 
"tGravityAcc.mean...Z" 
"tGravityAcc.std...X" 
"tGravityAcc.std...Y" 
"tGravityAcc.std...Z" 
"tBodyAccJerk.mean...X" 
"tBodyAccJerk.mean...Y" 
"tBodyAccJerk.mean...Z" 
"tBodyAccJerk.std...X" 
"tBodyAccJerk.std...Y" 
"tBodyAccJerk.std...Z" 
"tBodyGyro.mean...X" 
"tBodyGyro.mean...Y" 
"tBodyGyro.mean...Z" 
"tBodyGyro.std...X" 
"tBodyGyro.std...Y" 
"tBodyGyro.std...Z" 
"tBodyGyroJerk.mean...X" 
"tBodyGyroJerk.mean...Y" 
"tBodyGyroJerk.mean...Z" 
"tBodyGyroJerk.std...X" 
"tBodyGyroJerk.std...Y" 
"tBodyGyroJerk.std...Z" 
"tBodyAccMag.mean.." 
"tBodyAccMag.std.." 
"tGravityAccMag.mean.." 
"tGravityAccMag.std.." 
"tBodyAccJerkMag.mean.." 
"tBodyAccJerkMag.std.." 
"tBodyGyroMag.mean.." 
"tBodyGyroMag.std.." 
"tBodyGyroJerkMag.mean.." 
"tBodyGyroJerkMag.std.." 
"fBodyAcc.mean...X" 
"fBodyAcc.mean...Y" 
"fBodyAcc.mean...Z" 
"fBodyAcc.std...X" 
"fBodyAcc.std...Y" 
"fBodyAcc.std...Z" 
"fBodyAccJerk.mean...X" 
"fBodyAccJerk.mean...Y" 
"fBodyAccJerk.mean...Z" 
"fBodyAccJerk.std...X" 
"fBodyAccJerk.std...Y" 
"fBodyAccJerk.std...Z" 
"fBodyGyro.mean...X" 
"fBodyGyro.mean...Y" 
"fBodyGyro.mean...Z" 
"fBodyGyro.std...X" 
"fBodyGyro.std...Y" 
"fBodyGyro.std...Z" 
"fBodyAccMag.mean.." 
"fBodyAccMag.std.." 
"fBodyBodyAccJerkMag.mean.." 
"fBodyBodyAccJerkMag.std.." 
"fBodyBodyGyroMag.mean.." 
"fBodyBodyGyroMag.std.." 
"fBodyBodyGyroJerkMag.mean.." 
"fBodyBodyGyroJerkMag.std.." 

