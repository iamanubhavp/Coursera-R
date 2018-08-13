library(plyr)
library(dplyr)


#Read X training data 

xt <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/train/X_train.txt")

#Read Y training data

yt <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/train/y_train.txt")

#Read subject training data

st <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/train/subject_train.txt")


#Read X test data 

xtest <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/test/X_test.txt")

#Read Y test data 

ytest <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/test/y_test.txt")

#Read subject test data

stest <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/test/subject_test.txt")

#Merge Training & Test data to create a single data set for each (X,Y and subject)

X <- rbind(xt, xtest)

Y <- rbind(yt, ytest)

subjectD <- rbind(st, stest)

# Read "features" data set

f <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/features.txt")

#Get data only the column nams having mean() or standard deviation()

MSD_f <- grep("-(mean|std)\\(\\)", f[, 2])


#subset the required columns

X <- X[, MSD_f]

#Correct the column names 

names(X) <- f[MSD_f, 2]

#Read the activity_label data set

Act <- read.table("H:/My Documents/Brian_R_CleanUp/UCI HAR Dataset/activity_labels.txt")

#Update the value with correct activity names

Y[, 1] <- Act[Y[, 1], 2]

#update column name with "activity"

names(Y) <- "activity"

#update column name with "subject"

names(subjectD) <- "subject"

#Bind all the columns data into a single data set usng cbind()
NewData <- cbind(X, Y, subjectD)

#Create a seperate tidy data set having the average of each variable for each activity & each subject

AVG_DATA <- ddply(NewData, .(NewData$subject, NewData$activity), function(x) colMeans(x[, 1:66]))
View(AVG_DATA)

 #Write the tidy data created in the last step with tidy_data.txt

   write.table(AVG_DATA, "tidy_data.txt", sep = ",", row.names = FALSE)
  
      
     










