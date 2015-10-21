run_analysis<-function(){
	# read in test and train data sets and associated labels
	test<-read.table("./UCI HAR Dataset/test/X_test.txt")	
	test_names<-read.table("./UCI HAR Dataset/test/y_test.txt")
	train<-read.table("./UCI HAR Dataset/train/X_train.txt")
	train_names<-read.table("./UCI HAR Dataset/train/y_train.txt")	
	subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
	subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
	features<-read.table("./UCI HAR Dataset/features.txt")
	# add column names to test and train data frames
	names(test)<-features[,2]
	names(train)<-features[,2]
	# add activity and subject id's to data frames
	test$activity<-test_names[[1]]
	test$subjectid<-subject_test[[1]]
	train$activity<-train_names[[1]]
	train$subjectid<-subject_train[[1]]
	# merge data frames
	mergedData<-rbind(train,test)
	# read in activity labels
	activity<-read.table("./UCI HAR Dataset/activity_labels.txt")
	
	#step2
	# create a new data set containing mean and std data
	mean_col<-grep("mean",names(mergedData))
	std_col<-grep("std",names(mergedData))
	all_cols<-c(mean_col,std_col)
	# add subjectid and activity to new data frame
	all_cols<-append(all_cols,562)
	all_cols<-append(all_cols,563)
	mean_and_std<-mergedData[,all_cols]

	# step 3
	# replace 1-6 with corresponding activity labels
	activity_names<-levels(unlist(activity[[2]]))
	for (i in 1:6){
		mean_and_std$activity[mean_and_std$activity==toString(i)]<-activity_names[i]
	}
	
	# step 4
	# rename variables to be more readable
	old_names<-names(mean_and_std)
	old_names<-sub("BodyBody","Body",old_names)
	old_names<-sub("t","time",old_names)
	old_names<-sub("f","FFT",old_names)
	old_names<-sub("Acc","Accelerometer",old_names)
	old_names<-sub("Gyro","Gyrosome",old_names)
	old_names<-sub("Mag","Magnitude",old_names)
	old_names<-sub("stimed","std",old_names)
	old_names<-sub("actimeivity","activity",old_names)
	old_names<-sub("subjectimeid","subjectid",old_names)
	colnames(mean_and_std)<-old_names

	# step 5
	# create a new data frame containig the means of variables by subject id and activity
	aql <- melt(mean_and_std, id.vars = c("subjectid", "activity"))
	aqw <- dcast(aql, subjectid + activity ~ variable,fun.aggregate = mean, na.rm=TRUE)
	write.table(aqw, "tidydata.txt", sep="\t",row.names=FALSE)



}