library(plyr)
library(dplyr)
library(reshape2)

features = read.table("./UCI HAR Dataset/features.txt", 
                      col.names = c("featureID","feature"), 
                      stringsAsFactors=FALSE)

activityLabels = read.table("./UCI HAR Dataset/activity_labels.txt", 
                            col.names = c("activityID", "activity"))

train = train = read.table("./UCI HAR Dataset/train/X_train.txt") 
names(train) = features$feature

test = read.table("./UCI HAR Dataset/test/X_test.txt") 
names(test) = features$feature

trainSub = read.table("./UCI HAR Dataset/train/subject_train.txt", 
                      col.names = "subject")
testSub = read.table("./UCI HAR Dataset/test/subject_test.txt", 
                     col.names = "subject")
trainLabel = read.table("./UCI HAR Dataset/train/y_train.txt", 
                        col.names = "activityID")
testLabel = read.table("./UCI HAR Dataset/test/y_test.txt", 
                       col.names = "activityID")

test2 = cbind(testSub, testLabel, test)

train2 = cbind(trainSub, trainLabel, train)

test3 = merge(test2, activityLabels)

train3 = merge(train2, activityLabels)

allData = rbind(test3, train3)

allData2 = allData[,c(2,564,3:563)]

allData_sorted = arrange(allData2, subject, activity)

dataMeanStd = subset(allData_sorted, 
                     select = c(1:2, 
                                grep("-mean()",names(allData),fixed=TRUE),
                                grep("-std()",names(allData),fixed=TRUE)))

by_activity_subject = group_by(dataMeanStd, activity, subject)

mean_activity_subject = summarise_each(by_activity_subject, funs(mean))

write.table(mean_activity_subject, file="mean_activity_subject.txt", row.name=FALSE)
