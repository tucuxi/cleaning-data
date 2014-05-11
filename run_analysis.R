activityLabels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("features.txt", stringsAsFactors = FALSE)
colNames <- make.names(features[, 2])
colSubset <- grep("\\.(mean|std)\\.\\.", colNames) 

load <- function(t) {
  x <- read.table(paste0(t, "/X_", t, ".txt"), col.names = colNames)
  x <- subset(x, select = colSubset)
  y <- read.table(paste0(t, "/y_", t, ".txt"), col.names = "activity")
  s <- read.table(paste0(t, "/subject_", t, ".txt"), col.names = "subject")
  data <- within(cbind(s, x, y), activity <- as.factor(activity))
  levels(data$activity) <- activityLabels[, 2]
  data
}

data <- rbind(load("test"), load("train"))
tidy <- aggregate(. ~ subject + activity, data, mean)
write.table(tidy, "tidy.txt")
