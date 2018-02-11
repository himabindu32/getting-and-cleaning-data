# Code Book

This code book summarizes the variable and methods used in runanalysis.R and the resulting data fields in `tidydata.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

* `MeanTimeBodyBodyAccMeanX`
* `MeanTimeBodyAccMeanY`
* `MeanTimeBodyAccMeanZ`
* `MeanTimeBodyAccStdDevX`
* `MeanTimeBodyAccStdDevY`
* `MeanTimeBodyAccStdDevZ`
* `MeanTimeAccMeanX`
* `MeanTimeAccMeanY`
* `MeanTimeAccMeanZ`
* `MeanTimeAccStdDevX`
* `MeanTimeAccStdDevY`
* `MeanTimeAccStdDevZ`
* `MeanTimeBodyAccJerkMeanX`
* `MeanTimeBodyAccJerkMeanY`
* `MeanTimeBodyAccJerkMeanZ`
* `MeanTimeBodyAccJerkStdDevX`
* `MeanTimeBodyAccJerkStdDevY`
* `MeanTimeBodyAccJerkStdDevZ`
* `MeanTimeBodyGyroMeanX`
* `MeanTimeBodyGyroMeanY`
* `MeanTimeBodyGyroMeanZ`
* `MeanTimeBodyGyroStdDevX`
* `MeanTimeBodyGyroStdDevY`
* `MeanTimeBodyGyroStdDevZ`
* `MeanTimeBodyGyroJerkMeanX`
* `MeanTimeBodyGyroJerkMeanY`
* `MeanTimeBodyGyroJerkMeanZ`
* `MeanTimeBodyGyroJerkStdDevX`
* `MeanTimeBodyGyroJerkStdDevY`
* `MeanTimeBodyGyroJerkStdDevZ`
* `MeanTimeBodyAccMagMean`
* `MeanTimeBodyAccMagStdDev`
* `MeanTimeAccMagMean`
* `MeanTimeAccMagStdDev`
* `MeanTimeBodyAccJerkMagMean`
* `MeanTimeBodyAccJerkMagStdDev`
* `MeanTimeBodyGyroMagMean`
* `MeanTimeBodyGyroMagStdDev`
* `MeanTimeBodyGyroJerkMagMean`
* `MeanTimeBodyGyroJerkMagStdDev`
* `MeanFrequencyAccMeanX`
* `MeanFrequencyAccMeanY`
* `MeanFrequencyAccMeanZ`
* `MeanFrequencyAccStdDevX`
* `MeanFrequencyAccStdDevY`
* `MeanFrequencyAccStdDevZ`
* `MeanFrequencyAccMeanFreqX`
* `MeanFrequencyAccMeanFreqY`
* `MeanFrequencyAccMeanFreqZ`
* `MeanFrequencyAccJerkMeanX`
* `MeanFrequencyAccJerkMeanY`
* `MeanFrequencyAccJerkMeanZ`
* `MeanFrequencyAccJerkStdDevX`
* `MeanFrequencyAccJerkStdDevY`
* `MeanFrequencyAccJerkStdDevZ`
* `MeanFrequencyAccJerkMeanFreqX`
* `MeanFrequencyAccJerkMeanFreqY`
* `MeanFrequencyAccJerkMeanFreqZ`
* `MeanFrequencyGyroMeanX`
* `MeanFrequencyGyroMeanY`
* `MeanFrequencyGyroMeanZ`
* `MeanFrequencyGyroStdDevX`
* `MeanFrequencyGyroStdDevY`
* `MeanFrequencyGyroStdDevZ`
* `MeanFrequencyGyroMeanFreqX`
* `MeanFrequencyGyroMeanFreqY`
* `MeanFrequencyGyroMeanFreqZ`
* `MeanFrequencyAccMagMean`
* `MeanFrequencyAccMagStdDev`
* `MeanFrequencyAccMagMeanFreq`
* `MeanFrequencyBodyAccJerkMagMean`
* `MeanFrequencyBodyAccJerkMagStdDev`
* `MeanFrequencyBodyAccJerkMagMeanFreq`
* `MeanFrequencyBodyGyroMagMean`
* `MeanFrequencyBodyGyroMagStdDev`
* `MeanFrequencyBodyGyroMagMeanFreq`
* `MeanFrequencyBodyGyroJerkMagMean`
* `MeanFrequencyBodyGyroJerkMagStdDev`
* `MeanFrequencyBodyGyroJerkMagMeanFreq`

## Variables

* fileURL : URL to download the project files
* XTrain : Store the Xtrain set data
* YTrain : Store the Ytrain set data
* XTest : Store the XTest set data
* YTest : Store the YTest set data
* Xmerged : Merged data from XTrain and XTest
* Ymerged : Merged data from YTrain and YTest
* matches : Get the mean() and std() only data from Xmerged
* activityNames : descriptive activity names to activities in dataset.
* subjectTrain : Store the subject_train data
* subjectTest : Store the subject_test data
* subjects : merged data from subjectTrain and subjectTest
* limitedColMeans : Column means for all but the subject and activity columns
* tidyMeans : average of each variable for each activity and each subject.

## Methods

* runAnalysis : Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* CheckData : Checks the tidydataset.txt is properly readable or not

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

The set of variables that were estimated (and kept for this assignment) from these signals are:

mean(): Mean value
std(): Standard deviation
