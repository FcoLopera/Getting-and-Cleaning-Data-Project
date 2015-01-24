# Getting-and-Cleaning-Data-Project

In this repository we have the script for the peer asignment of coursera course "Getting and Cleaning Data"

## Notes for ```run_analysis.R``` script :

* Require ```reshapre2```, ```plyr``` and ```data.table``` librareis.
* Load both test and train data
* Load the features and activity labels.
* Extract the mean and standard deviation column names and data.
* Process the data. There are two parts processing test and train data respectively.
* Merge data set.


## How to run the script:

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Extract these files in your working directory an run the script.

For obtain the tidy dataset run the each line of the script in order.

Once the script is finished, we will have a file ("tidy_dataset.txt") in the directory with the result.


## The data

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- '(train|test)/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- '(train|test)/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- '(train|test)/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. As with the above, we have files for the Y and Z axis.

- '(train|test)/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. Same as above for Y and Z axis.
