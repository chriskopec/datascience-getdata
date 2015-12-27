# CodeBook

## Transformations

The following transformations were  performed on the dataset: 

1. The subject, activity, and feature sets were read in as tables and bound together for both the test and train datasets. Each dataset was then bound together to produce one table. 
2. The feature variables were filtered to exclude any that did not include mean or standard deviation values. 
3. The activity variable was translated from a numeric value to an activity label defined by the activity_label.txt file. 
4. The data was grouped by subject and activity and the mean was computed for each variable within the grouped data.


## Result

The result of this function is a data.frame summarizing each subject, activity and the mean value for each variable that was collected. 


## Variables

1 - subject : a numeric identifying the subject that produced the observations.

2 - activity : a factor that identifies the activity being done by the subject when collecting data in the observation. The options for activity are the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

3:68 - mean and standard deviation variables collected during the observation. 
