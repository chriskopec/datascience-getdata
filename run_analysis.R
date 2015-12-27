
run_analysis <- function() {
  feat_file = 'UCI HAR Dataset/features.txt'
  act_label_file = 'UCI HAR Dataset/activity_labels.txt'
  
  # Test Data
  sub_test_file = 'UCI HAR Dataset/test/subject_test.txt'
  act_test_file = 'UCI HAR Dataset/test/y_test.txt'
  feat_test_file = 'UCI HAR Dataset/test/X_test.txt'
  
  # Train Data
  sub_train_file = 'UCI HAR Dataset/train/subject_train.txt'
  act_train_file = 'UCI HAR Dataset/train/y_train.txt'
  feat_train_file = 'UCI HAR Dataset/train/X_train.txt'
  
  
  full_feature_list <- read.table(feat_file, col.names = c("index", "feature"))
  mean_std_index <- grep("mean\\(|std\\(", full_feature_list$feature)
  filter_feat_list <- full_feature_list[mean_std_index,]
  act_labels <- read.table(act_label_file, col.names = c("index", "activity"))
  
  sub_test <- read.table(sub_test_file, col.names = "subject")
  act_test <- read.table(act_test_file, col.names = "activityid")
  act_test <- mutate(act_test, activity = act_labels$activity[activityid])
  feat_test <- read.table(feat_test_file, col.names = full_feature_list$feature)[,filter_feat_list$index]
  data_test <- cbind(sub_test, act_test, feat_test)
  
  sub_train <- read.table(sub_train_file, col.names = "subject")
  act_train <- read.table(act_train_file, col.names = "activityid")
  act_train <- mutate(act_train, activity = act_labels$activity[activityid])
  feat_train <- read.table(feat_train_file, col.names = full_feature_list$feature)[,filter_feat_list$index]
  data_train <- cbind(sub_train, act_train, feat_train)
  
  data <- rbind(data_test, data_train)
  
  tidy_data <- data %>% 
    select(-activityid) %>%
    group_by(subject, activity) %>%
    summarize_each(funs(mean))
  
  tidy_data
}
