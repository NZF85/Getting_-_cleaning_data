# Source of data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# This R script does the following:

# 1. Merges the training and the test sets to create one data set.

Xtrain <- read.table("train/X_train.txt")
Xtest <- read.table("test/X_test.txt")
X <- rbind(Xtrain, Xtest)

Strain <- read.table("train/subject_train.txt")
Stest <- read.table("test/subject_test.txt")
S <- rbind(Strain, Stest)

Ytrain <- read.table("train/y_train.txt")
Ytest <- read.table("test/y_test.txt")
Y <- rbind(Ytrain, Ytest)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")
#\\( means look for the bracket "(" itself
#this finds all the index that maches -mean() and -std()
index <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
# we only draw the columns that match the indexes
X <- X[, index]
# look for all the ( & ) and replace them with blanks in the vector features[index,2]
# featues[index,2] looks at all the index with -mean() and -std(), column 2 only, giving only a vector
# changed to lower case and used as names for X. so all the column vector of names drawn from the column of features go into the column names in X
names(X)<-tolower(gsub("\\(|\\)", "", features[index, 2]))


# 3. Uses descriptive activity names to name the activities in the data set.

activities <- read.table("activity_labels.txt")
# this draws all the activities labels out from the activities
# sub _ with a blank, then changes all to lower case
# then swap the column value 2 in activities with the new labels
#activities becomes a matrix ((1,walking),(2,standing)...)
activities[, 2] <- gsub("_", "", tolower(activities[, 2]))
# Y is a vector of values c(2,3,4,5,5....)
# activities is a collection of values matching labels
# this one matches the matrix values in column 2 of activities to the items in Y
Y[,1] <- activities[Y[,1], 2]
#names the column as activity
names(Y) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names.

names(S) <- "subject"
combine <- cbind(S, Y, X)
write.table(combine, "merged_clean_data.txt")

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

agg<- aggregate(combine[,3:ncol(combine)], by=list(subject = combine$subject, activity = combine$activity), mean)
write.table(format(agg,scientific=T), "averaged_data.txt",row.names=F, col.names=T, quote=2)
