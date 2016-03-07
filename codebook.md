The following are the details about the variables, the data, and how the data was transform for the final Project for the Coursera class "Getting and Cleaning Data" as authored by Kamikaze101.

	1) The files needed for the project were copied from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the same folder as the R script file run_analysis.R.
		a. features.txt
		b. X_test.txt
		c. y_test.txt
		d. X_train.txt
		e. y_train.txt
	
	2) The headers for the data table are read first from the second column of features.txt as a vector.
	3) Next the data from the other 4 files are appended to the data table. This data was already in vector rows.
	4) The data tables was next subsetted for just the mean ("mean") and standard deviation ("std") excluding mean frequency "meanFreq" with a regular expression. The flag "perl=TRUE" must be included for the regular expression with the look ahead function to work.
	5) Next it adds the activity labels from the activity_label file and binds it to the data table of means and stds.
	6) and i ran out of time to create a new tiny data set because i had too much trouble getting the rest of the steps completed
