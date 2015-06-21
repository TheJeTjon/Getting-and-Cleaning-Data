# 
# Course Project Getting and Cleaning Data: Tidy Data 
#
################################################################################
# Prep stuff 
################################################################################
library (plyr)
library (curl)
library (dplyr)
dell  <- "C:/Users/Jerry/DropBox/_Coursera/3. Getting and Cleaning Data/Week 3"
myDir <- dell
init  <- function(dir=myDir){setwd(dir) }

init()

destFolder <- "./data"
destFileName <- paste (destFolder, "/data.zip", sep = "")
destZipDir <- paste (destFolder, "/CourseProject", sep ="")  
DataDir <- paste (destZipDir,  "/UCI HAR Dataset", sep = "") 
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 

# check if folder exists, if not create 
if (!file.exists(destFolder)) {dir.create(destFolder)}

# check if destination file  exists, if not download  
if (!file.exists(destFileName)) {  download.file(URL, destFileName, method = "auto")}

# always unzip 
unzip (destFileName, overwrite = TRUE, exdir = destZipDir)

################################################################################
# 1 Merges the training and the test sets to create one data set.
# a. use read.table to read the various files 
################################################################################
# path: 
#   \data\CourseProject\UCI HAR Dataset\test
# filenames:  
#   subject_test.txt
#    X_test.txt
#    y_test.txt
# \data\CourseProject\UCI HAR Dataset\train
# filenames:  
#   subject_train.txt
#    X_train.txt
#	  y_train.txt
################################################################################
DataDirTest <- paste (DataDir, "/test/", sep = "")
DataDirTrain <- paste (DataDir, "/train/", sep = "")

# test data sets 
subject_test <- read.table(paste(DataDirTest, "subject_test.txt", sep=""))
x_test <- read.table(paste(DataDirTest, "X_test.txt", sep=""))
y_test <- read.table(paste(DataDirTest, "y_test.txt", sep=""))

# train data sets 
subject_train <- read.table(paste(DataDirTrain, "subject_train.txt", sep=""))
x_train <- read.table(paste(DataDirTrain, "X_train.txt", sep=""))
y_train <- read.table(paste(DataDirTrain, "y_train.txt", sep=""))

features <- read.table(paste(DataDir, "/features.txt", sep=""))
activity_labels <- read.table(paste(DataDir, "/activity_labels.txt", sep=""))

################################################################################
# create the merged datasets:  use rbind() 
# check data 
# head (subject_merged)
# head (x_merged)
# head (y_merged)
################################################################################
subject_merged  <-  rbind (subject_test, subject_train)
x_merged        <-  rbind(x_test, x_train)
y_merged        <-  rbind(y_test, y_train)

################################################################################
# cleanup old data 
################################################################################
rm (subject_test)
rm (subject_train)
rm (x_test)
rm (y_test)
rm (x_train)
rm (y_train)

################################################################################
# The file features.txt contains our variables 
# use the names() function to set using the vector of the column V2
# check names(x_merged)
################################################################################

names (x_merged) <- features$V2

################################################################################
# 2. Extracts only the measurements on the mean and standard deviation for 
# each measurement (x_data set). 
# use grep() pattern matchingto look for the strings -mean() and -std() 
# handy: http://www.regular-expressions.info/rlanguage.html
################################################################################

# get the desired colums 
col_meand_stddev <- grep ("-mean\\(\\)|-std\\(\\)", features$V2)

# use this for subsetting: 
#x_mergeda <- x_merged[, col_meand_stddev] 
x_merged<- x_merged[, col_meand_stddev] 

################################################################################
# 3. Uses descriptive activity names to name the activities (Y data set)
# path: 
#\data\CourseProject\UCI HAR Dataset\activity_labels.txt
################################################################################

# mutate all rows, match the second column of activity_labels with the contents of the rows  
y_merged[, 1] <- activity_labels [y_merged[, 1], 2] 
names (y_merged) <- "Activity" 

################################################################################
# 4. Appropriately labels the x_data set with descriptive variable names. 
################################################################################

# get rid of the chars () in column names 
names(x_merged) <- gsub('\\(|\\)',"",names(x_merged), perl = TRUE)

# make.names: Make syntactically valid names
names(x_merged) <- make.names(names(x_merged))

# get rid of the following variables - see features_info.txt because they are derived or calcuated from other columns
# (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
# (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
filter_1  <- grepl("tBodyAccJerk", names(x_merged), ignore.case=TRUE)
filter_2  <- grepl("tBodyGyroJerk", names(x_merged), ignore.case=TRUE)
filter_3  <- grepl("tBodyAccMag", names(x_merged), ignore.case=TRUE)
filter_4  <- grepl("tGravityAccMag", names(x_merged), ignore.case=TRUE)

filter_5  <- grepl("tBodyAccJerkMag", names(x_merged), ignore.case=TRUE)
filter_6  <- grepl("tBodyGyroMag", names(x_merged), ignore.case=TRUE)
filter_7  <- grepl("tBodyGyroJerkMag", names(x_merged), ignore.case=TRUE)

subset_filter <- c(names(x_merged)[filter_1], 
                      names(x_merged)[filter_2],
                      names(x_merged)[filter_3],
                      names(x_merged)[filter_4],
                      names(x_merged)[filter_5],
                      names(x_merged)[filter_6],
                      names(x_merged)[filter_7])

# exclude variables v1, v2, v3
myvars <- names(x_merged) %in% subset_filter
x_merged <- x_merged[!myvars]

# clearer names using  find and replace - see features_info.txt 
# AccJerk = linear accelleration
# GyroJerk = angular velocity
names(x_merged) <- gsub("^t", "TimeDomain.",names(x_merged))
names(x_merged) <- gsub("^f", "FrequencyDomain.",names(x_merged))
names(x_merged) <- gsub("\\.mean", ".Mean",names(x_merged))
names(x_merged) <- gsub("\\.std", ".StandardDeviation",names(x_merged))
names(x_merged) <- gsub("AccJerk", "LinearAcceleration",names(x_merged))
names(x_merged) <- gsub("GyroJerk" ,"AngularVelocity",names(x_merged))
names(x_merged) <- gsub("Gyro-" ,"Angular",names(x_merged))
names(x_merged) <- gsub("Acc-","Acceleration",names(x_merged))
names(x_merged) <- gsub("Mag","Magnitude",names(x_merged))
names(x_merged) <- gsub("BodyAcc","BodyAccelleration",names(x_merged))
names(x_merged) <- gsub("BodyGyro","BodyAngular",names(x_merged))
names(x_merged) <- gsub("GravityAcc","GravityAccelleration",names(x_merged))

# dont forget to label the subject data set
names (subject_merged) <- "Subject"

# bind all the data in a single data set 
all_data <- cbind (subject_merged, y_merged , x_merged) 

################################################################################
# 5. From the data set in step 4, creates a second, independent 
# tidy data set with the average of each variable for each activity and each subject.
# use dplyr: http://stackoverflow.com/questions/21644848/summarizing-multiple-columns-with-dplyr
################################################################################

all_data_2 <- tbl_df(all_data)
tidy_data_set <- all_data_2 %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))

# Write the results to a text file 
write.table(tidy_data_set, "./tidy_data_set.txt", row.names= FALSE)
