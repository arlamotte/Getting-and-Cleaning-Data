library(plyr)
library(tidyr)
library(dplyr)
library(sqldf)


activity_labels <- read.table("activity_labels.txt", quote="\"")
activity_labels <- rename(activity_labels,id = V1, label = V2)


features <- read.table("features.txt", quote="\"")
features <- rename(features,id = V1, feature = V2)

## test

X_test <- read.table("test/X_test.txt", quote="\"")
newnames <- unlist(features$feature)
colnames(X_test) <- newnames


means <- X_test[, grep("-mean()", colnames(X_test),fixed=TRUE)]
means <- mutate(means, ob = rownames(means))

stds <- X_test[, grep("-std()", colnames(X_test),fixed=TRUE)]
stds <- mutate(stds, ob = rownames(means))


y_test <- read.table("test/y_test.txt", quote="\"")
y_test <- rename(y_test,id = V1)
y_test <- mutate(y_test, ob = rownames(y_test))

activity <- sqldf("SELECT label FROM y_test join activity_labels USING(id)")
activity <- mutate(activity, ob = rownames(activity))

subject_test <- read.table("test/subject_test.txt", quote="\"")
subject_test <- rename(subject_test,id = V1)
subject_test <- mutate(subject_test, ob = rownames(subject_test))

test <- sqldf("SELECT * FROM subject_test join activity USING(ob) join means  USING(ob) join stds  USING(ob) ")

## train

X_train <- read.table("train/X_train.txt", quote="\"")
colnames(X_train) <- newnames


means <- X_train[, grep("-mean()", colnames(X_train),fixed=TRUE)]
means <- mutate(means, ob = rownames(means))

stds <- X_train[, grep("-std()", colnames(X_train),fixed=TRUE)]
stds <- mutate(stds, ob = rownames(means))


y_train <- read.table("train/y_train.txt", quote="\"")
y_train <- rename(y_train,id = V1)
y_train <- mutate(y_train, ob = rownames(y_train))

activity <- sqldf("SELECT label FROM y_train join activity_labels USING(id)")
activity <- mutate(activity, ob = rownames(activity))

subject_train <- read.table("train/subject_train.txt", quote="\"")
subject_train <- rename(subject_train,id = V1)
subject_train <- mutate(subject_train, ob = rownames(subject_train))

train <- sqldf("SELECT * FROM subject_train join activity USING(ob) join means  USING(ob) join stds  USING(ob) ")

#tidy

temp_tidy <- sqldf("select * from train union select * from test")

temp_tidy <- temp_tidy[, !(colnames(temp_tidy) %in% c("ob"))]

tidy <- ddply(temp_tidy,.(id,label),numcolwise(mean))

tidy <- rename(tidy,subject = id, activity = label)

write.table(tidy,"tidy_data.txt", row.name = FALSE) 
