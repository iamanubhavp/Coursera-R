


Data Source For The Assignment:



 



https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



 



 



http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones






Description of Dataset



 



This  has been updated
in the READ.txt



 



the training data and 30% the test data.



 



Measurements



 



The following sensor signals were captured using the
smartphone's embedded accelerometer and gyroscope:



•three-axial linear acceleration



•three-axial angular velocity at a constant rate of 50Hz



 



The captured signals were pre-processed by applying noise
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50%
overlap (128 readings/window). From each window, a vector of features was
obtained by calculating variables from the time and frequency domain. See the
section 'Feature Selection' below, also the file 'features_info.txt' has
complete details.



 



 



Transformations



 



As per the requirements of the projet the following data
cleansing transformations were made to keep the resulting output clean and
tidy:



•The training and the test sets have been merged to form a
single data set



•measurements on the mean and standard deviation were
considered



•human readable activity names and labels were used appropriately
to increase data readability



•A second tidy dataset was created as the final step of data
cleansing efforts



 



The transformations are achieved by the script called
run_analysis.R, which:



1.checks and downloads required R packages (plyr, dplyr)



2.util functions for loading, extract data



3.Downloads the original dataset and verifies its content



4.Loads activity and label names datasets



5.Creates the second independent tidy dataset based on mean
and standard deviations



5.Loads training and test datasets and improves column names
with appropriate "activity" & "subject"



6.Bind the column for the testing and the test datasets
using dplyr.



7.Use the "ddply" and "colMeans' function to
create a sperate tidy data set having the average of each variable for each
"activity" & each "subject"



8.Saves the tidy dataset as tidy_data.txt



