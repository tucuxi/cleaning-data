Code Book
=========

The raw data set is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script **run_analysis.R** performs a number of transformations to produce the
tidy data set:

1. Measurements are read from **X_test.txt** and **X_train.txt**. All
measurements other than means and standard deviations are excluded using the
**subset()** function.

2. Features names are retrieved from **features.txt**. In order to generate valid
R column names, the function **make.names()** is used. Column names are applied
to the data frame while reading it with **read.table()**.

3. Columns from different raw files are combined into a data frame using
**cbind()**.

4. Activity labels are read from **activity_labels.txt**. In the tidy data
frame, activity is represented as a factor variable with these labels.

5. Test and training data is read into separate data frames. These data frames
are combined with **rbind()**.

6. The average values required for the tidy data set are computed using the
**aggregate()** function. Data is grouped by subject and activity, and the
averages are computed for all other columns.

The data frame resulting from these transformations is written to a file
with the **write.table()** function.

The tidy data are structured into the following columns:

* subject -- int
* activity -- factor: WALKING (1), WALKING_UPSTAIRS (2), WALKING_DOWNSTAIRS (3),
  SITTING (4), STANDING (5), LAYING (6)
* tBodyAcc.mean...X -- numeric
* tBodyAcc.mean...Y -- numeric
* tBodyAcc.mean...Z -- numeric
* tBodyAcc.std...X -- numeric
* tBodyAcc.std...Y -- numeric
* tBodyAcc.std...Z -- numeric
* tGravityAcc.mean...X -- numeric
* tGravityAcc.mean...Y -- numeric
* tGravityAcc.mean...Z -- numeric
* tGravityAcc.std...X -- numeric
* tGravityAcc.std...Y -- numeric
* tGravityAcc.std...Z -- numeric
* tBodyAccJerk.mean...X -- numeric
* tBodyAccJerk.mean...Y -- numeric
* tBodyAccJerk.mean...Z -- numeric
* tBodyAccJerk.std...X -- numeric
* tBodyAccJerk.std...Y -- numeric
* tBodyAccJerk.std...Z -- numeric
* tBodyGyro.mean...X -- numeric
* tBodyGyro.mean...Y -- numeric
* tBodyGyro.mean...Z -- numeric
* tBodyGyro.std...X -- numeric
* tBodyGyro.std...Y -- numeric
* tBodyGyro.std...Z -- numeric
* tBodyGyroJerk.mean...X -- numeric
* tBodyGyroJerk.mean...Y -- numeric
* tBodyGyroJerk.mean...Z -- numeric
* tBodyGyroJerk.std...X -- numeric
* tBodyGyroJerk.std...Y -- numeric
* tBodyGyroJerk.std...Z -- numeric
* tBodyAccMag.mean.. -- numeric
* tBodyAccMag.std.. -- numeric
* tGravityAccMag.mean.. -- numeric
* tGravityAccMag.std.. -- numeric
* tBodyAccJerkMag.mean.. -- numeric
* tBodyAccJerkMag.std.. -- numeric
* tBodyGyroMag.mean.. -- numeric
* tBodyGyroMag.std.. -- numeric
* tBodyGyroJerkMag.mean.. -- numeric
* tBodyGyroJerkMag.std.. -- numeric
* fBodyAcc.mean...X -- numeric
* fBodyAcc.mean...Y -- numeric
* fBodyAcc.mean...Z -- numeric
* fBodyAcc.std...X -- numeric
* fBodyAcc.std...Y -- numeric
* fBodyAcc.std...Z -- numeric
* fBodyAccJerk.mean...X -- numeric
* fBodyAccJerk.mean...Y -- numeric
* fBodyAccJerk.mean...Z -- numeric
* fBodyAccJerk.std...X -- numeric
* fBodyAccJerk.std...Y -- numeric
* fBodyAccJerk.std...Z -- numeric
* fBodyGyro.mean...X -- numeric
* fBodyGyro.mean...Y -- numeric
* fBodyGyro.mean...Z -- numeric
* fBodyGyro.std...X -- numeric
* fBodyGyro.std...Y -- numeric
* fBodyGyro.std...Z -- numeric
* fBodyAccMag.mean.. -- numeric
* fBodyAccMag.std.. -- numeric
* fBodyBodyAccJerkMag.mean.. -- numeric
* fBodyBodyAccJerkMag.std.. -- numeric
* fBodyBodyGyroMag.mean.. -- numeric
* fBodyBodyGyroMag.std.. -- numeric
* fBodyBodyGyroJerkMag.mean. -- numeric
* fBodyBodyGyroJerkMag.std.. -- numeric