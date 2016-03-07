path <- "D:\\Kami\\Documents\\Getting and Cleaning data\\Project\\UCI HAR Dataset"
data <- dir.create(file.path(path), showWarnings = FALSE)
setwd(file.path(path))

# Load in the scripts
xTest <- read.table("X_test.txt")
xTrain <- read.table("X_train.txt")
yTest <- read.table("y_test.txt")
yTrain <- read.table("y_train.txt")
actLab <- read.table("activity_labels.txt")
feat <- read.table("features.txt")
# take the variable names from features and create a character vector
featVector <- as.vector(feat[,2])
dataTable <- data.frame()
# create a data frane of all the data
dataTable <- rbind(featVector, xTrain, xTest)
# sort out only the columns with mean and std
result <- grep(".(m|M)ean(?!Freq)|std.", dataTable, perl=TRUE, value=TRUE)
dataTable1 <- subset(dataTable, result)
head(dataTable1)
# add the activity labels to the data table
labels <- rbind("",yTrain,yTest)
dataTable1 <- cbind(labels,dataTable)
# and this is as far as i got before i ran out of time. so no step 5
