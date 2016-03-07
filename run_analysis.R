path <- "D:\\Kami\\Documents\\Getting and Cleaning data\\Project\\UCI HAR Dataset"
data <- dir.create(file.path(path), showWarnings = FALSE)
setwd(file.path(path))

xTest <- read.table("X_test.txt")
xTrain <- read.table("X_train.txt")
yTest <- read.table("y_test.txt")
yTrain <- read.table("y_train.txt")
actLab <- read.table("activity_labels.txt")
feat <- read.table("features.txt")
featVector <- as.vector(feat[,2])
dataTable <- data.frame()
dataTable <- rbind(featVector, xTrain, xTest)
# head(dataTable)
result <- grep(".(Mean|mean|std).", dataTable[1,])
labels <- rbind("",yTrain,yTest)
labels
dataTable1 <- cbind(labels,dataTable)
head(dataTable1)
dataTable(result)
result
cbind(dataTable[,1:6], dataTable[,41:46],dataTable[,81:866],dataTable[,1:6],dataTable[,1:6],dataTable[,1:6],)