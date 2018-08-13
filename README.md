

The original dataset included the following data files:



 



•'features.txt': List of all features.



 



 



•'activity_labels.txt': List of class labels and their
activity name.



 



 



•'train/X_train.txt': Training set.



 



 



•'train/y_train.txt': Training labels.



 



 



•'train/subject_train.txt': ID's of subjects in the training
data



 



 



•'test/X_test.txt': Test set.



 



 



•'test/y_test.txt': Test labels.



 



 



•'test/subject_test.txt': ID's of subjects in the training
data



 



 



 



A brief description of the script:



 



The run_analysis.R script merges data from a number of .txt
files and produces a tidy data set which may be used for further analysis.



 



•First it checks to see if the required "plyr" and
"dplyr" has been installed and then loads both the  package.



 



 



•It then reads all required .txt files and labels the
datasets.



 



 



•Consquently the appropriate "activity" and
"subject" are appended to the "test" and the
"training" data, which are then combined into one single data frame



 



 



•Using the "grep" function, all the columns with
mean() and std() values are extracted and then a new data frame, including only
the "activity", the "subject" and the mean() and std()
columns, is created



 



 



•Using the "cbind" function, descriptive activity
names are merged with the mean/std values dataset, to get one dataset with
descriptive activity names



 



 



•Lastly, with the help of the "ddply" and
"colMeans" functions the data is converted into a table containing
mean values of all the included features, ordered by the activity name and the
subject id, and the data is written to the "tidy_data.txt" file.



 



 



A description of the "tidy_data.txt" file may be
found in the "CodeBook.md" file.



