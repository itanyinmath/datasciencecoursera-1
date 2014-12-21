# Extracting the feature names information and parsing their names to appear more readable

df_temp <- read.table('UCI HAR Dataset/features.txt', col.names = c('index', 'feature_names'))

feature_names <- tolower(df_temp$feature_names)

feature_mean_index <- grep('mean\\(\\)', feature_names)
feature_std_index <- grep('std\\(\\)', feature_names)

feature_mean_names <- feature_names[feature_mean_index]
feature_mean_names <- gsub('\\(\\)','', feature_mean_names)
feature_mean_names <- gsub('-','_', feature_mean_names)
feature_std_names <- feature_names[feature_std_index]
feature_std_names <- gsub('\\(\\)','', feature_std_names)
feature_std_names <- gsub('-','_', feature_std_names)

#Activity names
df_name_activity <- read.table('UCI HAR Dataset/activity_labels.txt',col.names = c('index','activity_name'))

#Column names
column_names <- c('subject', 'activity_name', feature_mean_names, feature_std_names)

#Working with the test data set
df_test_all_features <- read.table('UCI HAR Dataset/test/X_test.txt')
df_test_subjects <- read.table('UCI HAR Dataset/test/subject_test.txt')
df_test_activities <- read.table('UCI HAR Dataset/test/y_test.txt')
test_activities <- df_name_activity$activity_name[df_test_activities$V1]

df_test = data.frame(df_test_subjects, test_activities, 
                     df_test_all_features[,c(feature_mean_index,feature_std_index)])
names(df_test) <- column_names

#Working with the train data set
df_train_all_features <- read.table('UCI HAR Dataset/train/X_train.txt')
df_train_subjects <- read.table('UCI HAR Dataset/train/subject_train.txt')
df_train_activities <- read.table('UCI HAR Dataset/train/y_train.txt')
train_activities <- df_name_activity$activity_name[df_train_activities$V1]

df_train = data.frame(df_train_subjects, train_activities, 
                     df_train_all_features[,c(feature_mean_index,feature_std_index)])
names(df_train) <- column_names

#Big data frame
df_total <- rbind(df_train, df_test)

#Do some sorting of the rows by subject and activity
df_total <- df_total[order(df_total$subject, df_total$activity_name),]

#Calculating means in columns by subject and activity
df_total_aggregation <- aggregate(df_total[,3:68], by=list(subject = df_total$subject, activity_name = df_total$activity_name),FUN=mean, na.rm=TRUE)


#Printing data sets
write.csv(df_total, "merged_data_set.txt", row.names=FALSE)
write.csv(df_total_aggregation, "tidy_aggregated_data_set.txt", row.names=FALSE)
