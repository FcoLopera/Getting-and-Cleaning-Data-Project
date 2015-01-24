  ## Import the test data
  X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
  Y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  
  ## Import the training data
  X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
  Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
  
  ## Load activity names
  activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
  
  ## Load column names from file
  features <- read.table("./UCI HAR Dataset/features.txt")
  
  ## 1) Merges the training and the test sets to create one data set.
  X_full<-rbind(X_test, X_train)
  Y_full<-rbind(Y_test, Y_train)
  subject_full<-rbind(subject_test, subject_train)
  
  colnames(X_full)<-features[,2]

  ## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 

  selectedColums<- grepl("mean()",colnames(X_full)) | grepl("std()",colnames(X_full))

  X_mean_std <- X_full[,selectedColums]

  ## 3) Uses descriptive activity names to name the activities in the data set
  ## 4) Appropriately labels the data set with descriptive variable names. 

  Y_factor <- as.factor(Y_full[,1])

  library(plyr)

  Y_factor <- mapvalues(Y_factor,from = as.character(activities[,1]), to = as.character(activities[,2]))
  

  X_mean_std <- cbind(Y_factor, X_mean_std)  

  colnames(X_mean_std)[1] <- "activity"


  X_mean_std <- cbind(subject_full, X_mean_std)
  colnames(X_mean_std)[1] <- "subject"


  ## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

  library(reshape2)

  X_melt<- melt(X_mean_std, id.vars=c("subject","activity"))
  tidy_dataset <- dcast(X_melt, subject + activity ~ ..., mean)

  write.table(tidy_dataset, file="tidy_dataset.txt", row.names = FALSE)
