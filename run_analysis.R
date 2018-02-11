XTrain <- XTest <- NULL
runAnalysis <- function() {
  # Get and extract data
  
  filename <- "getdata_dataset.zip"
  
  ## Download and unzip the dataset:
  if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, filename, method="auto")
  }  
  if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
  }
  
  # Merge the training and the test sets to create one data set.
  # Read and cache XTrain and XTest data
  if(is.null(XTrain)) { XTrain <<- read.table("UCI HAR Dataset\\train\\X_train.txt") }
  if(is.null(XTest))  { XTest  <<- read.table("UCI HAR Dataset\\test\\X_test.txt") }
  
  xmerged <- rbind(XTrain, XTest)
  
  yTrain <- read.table("UCI HAR Dataset\\train\\y_train.txt")
  yTest  <- read.table("UCI HAR Dataset\\test\\y_test.txt")
  yMerged <- rbind(yTrain, yTest)[, 1]
  
  featureNames <- read.table("UCI HAR Dataset\\features.txt")[, 2]
  names(xmerged) <- featureNames
  
  # Extract only the measurements on the mean and standard deviation for each measurement.
  # Limit to columns with feature names matching mean() or std():
  matches <- grep("(mean|std)\\(\\)", names(xmerged))
  limited <- xmerged[, matches]
  
  # Use descriptive activity names to name the activities in the data set.
  # Get the activity data and map to nicer names:
  
  
  activityNames <-
    c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")
  activities <- activityNames[yMerged]
  
  # Appropriately label the data set with descriptive variable names.
  # Change t to Time, f to Frequency, mean() to Mean and std() to StdDev
  # Remove extra dashes and BodyBody naming error from original feature names
  names(limited) <- gsub("^t", "Time", names(limited))
  names(limited) <- gsub("^f", "Frequency", names(limited))
  names(limited) <- gsub("-mean\\(\\)", "Mean", names(limited))
  names(limited) <- gsub("-std\\(\\)", "StdDev", names(limited))
  names(limited) <- gsub("-", "", names(limited))
  names(limited) <- gsub("BodyBody", "Body", names(limited))
  
  # Add activities and subject with nice names
  subjectTrain <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
  subjectTest  <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
  subjects <- rbind(subjectTrain, subjectTest)[, 1]
  
  tidy <- cbind(Subject = subjects, Activity = activities, limited)
  
  # Create a second, independent tidy data set with the average of each variable for each activity and each subject.
  library(plyr)
  # Column means for all but the subject and activity columns
  limitedColMeans <- function(data) { colMeans(data[,-c(1,2)]) }
  tidyMeans <- ddply(tidy, .(Subject, Activity), limitedColMeans)
  names(tidyMeans)[-c(1,2)] <- paste0("Mean", names(tidyMeans)[-c(1,2)])
  
  # Write file
  write.table(tidyMeans, "tidydataset.txt", row.names = FALSE)
  
  # Also return data
  tidyMeans
 }

# Use to check that the tidydataset.txt is properly readable
checkData <- function() {
  read.table("tidydataset.txt", header = TRUE)
}