library(dplyr)

# --- Read data ---------------------------------------------------------------

read.csv('../activity_labels.txt', sep = '', header = FALSE)
read.csv('../features.txt', sep = '', header = FALSE)

test.data         <- read.csv('test/X_test.txt', sep = '', header = FALSE)
test.activity.id  <- read.csv('test/y_test.txt', sep = '', header = FALSE)
subject.test      <- read.csv('test/subject_test.txt', sep = '', header = FALSE)

train.data        <- read.csv('train/X_train.txt', sep = '', header = FALSE)
train.activity.id <- read.csv('train/y_train.txt', sep = '', header = FALSE)
subject.train     <- read.csv('train/subject_train.txt', sep = '', header = FALSE)

# --- Describe activities using names from activity file  ---------------------

train.activity    <- factor(train.activity.id$V1, levels = activities$V1, labels = activities$V2)
test.activity     <- factor(test.activity.id$V1, levels = activities$V1, labels = activities$V2)
    
# --- Merge data and tidy variable labels ----------------------------------------------------
colnames(features)   <- c("id", "colname")
column.names         <- c(as.character(features$colname), "subject", "activity")
train.data           <- cbind(train.data, subject.train, train.activity)
test.data            <- cbind(test.data,  subject.test, test.activity)
colnames(train.data) <- column.names
colnames(test.data)  <- column.names
all.data             <- rbind(test.data, train.data)
selected.data        <- all_data[,grep("mean\\(\\)|std\\(\\)|subject|activity", column.names)]
colnames(selected.data) <- gsub('[-()]', '', colnames(selected.data))
colnames(selected.data) <- sub('mean', 'Mean', colnames(selected.data))
colnames(selected.data) <- sub('std', 'Std', colnames(selected.data))

# --- Calculate mean by subject and activty -----------------------------------
mean.by.subject.activity <- selected.data %>% group_by(activity, subject) %>% summarize_each(funs(mean))
write.table(mean.by.subject.activity, "mean_by_subject_and_activty.csv", row.names = FALSE, sep = ",")