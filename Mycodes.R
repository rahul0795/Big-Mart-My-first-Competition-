# This is the R code of the BIG MART PREDICTION -3 from analyticsvidhya.com
# This is my first submission to the analyticsvidhya.com and it scored an RMSE of 1200.
# I have used simpe linear regression model to predict the "Item_Outlet_Sales"

# The following piece of code read the train and test data sets. I have explicitly put stringsAsFactors = FALSE becuase i don't want R to
# Convert my characters into factors.

train <- read.csv("traindata.csv", stringsAsFactors = FALSE)
test <- read.csv("testdata.csv", stringsAsFactors = FALSE)

# Let's quickly Check the structure of these two data sets
str(train)
str(test)

# As expected, the train data set has one more variable than the test data. That's obvious because the whole process of this is to predict
# The one variable of test data
# For the purpose of claeaning data and exploring it, it's always a good idea to merge your two data sets.
# The response varaible "Item_Outlet_Sales" can be created using the following commands:

test$Item_Outlet_Sales <- 1

# Now, check the structure of the test dataset

str(test)
# It will have exactly same number of varaibles as in the train data set
# the train and test can be combined with the rbind command as follows:
full <- rbind(train, test)

#Lets quicky check the structure of the full data set
str(full)
#Now, we have total 14,204 rows and 12 columns
str(full)

# Let's Do a summary of the data and see what can be infered

summary(full)
# The output of the above commnad give us two important things to look for. The first is "Item_Visibility" and the second is "Item_Weight"
# Theare are some missing values. let's impute them with the median
full$Item_Weight[is.na(full$Item_Weight)] <- median(full$Item_Weight, na.rm = TRUE)

# Now, again check summary to confirm it
summary(full)
# Is there any other NA. The following command can tell this to you: 
table(is.na(full))

#The other important thing from the summary command was "Item_Visibilitry". the minimum value of visibility is 0 which is absurd. it can
# also be imputed by the median since it is also a continuous varaible

full$Item_Visibility[full$Item_Visibility == 0.0] <- median(full$Item_Visibility)

# Again, do the summary to check these imputations.
summary(full)

================

DATA exploration

================


table(full$Outlet_Establishment_Year)
qplot(Outlet_Establishment_Year, Item_Outlet_Sales, geom = "bar")
qplot(Outlet_Establishment_Year, Item_Outlet_Sales, data = full, geom = "bar")
qplot(Outlet_Establishment_Year, Item_Outlet_Sales, data = full, geom = "boxplot")
hist(Item_Outlet_Sales)
hist(full$Item_Outlet_Sales)
hist(full$Item_Outlet_Sales, breaks = 20)
hist(full$Item_Outlet_Sales, breaks = 50)
hist(full$Item_Outlet_Sales, breaks = 100)
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(10,20))
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(1000,2000))
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(0,100))
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(0,1000))
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(0,100))
hist(full$Item_Outlet_Sales, breaks = 100, xlim = c(0,500))
hist(full$Item_Outlet_Sales)
plot(full$Item_MRP, full$Item_Outlet_Sales)
plot(full$Item_MRP, full$Item_Outlet_Sales, xlim = c(50, 100)
)
View(full)
library(dplyr)
rawdata <- full %>%
filter(Item_MRP >= 66 & Item_MRP <= 71)
View(rawdata)
plot(full$Item_MRP, full$Item_Outlet_Sales)
plot(full$Item_MRP, full$Item_Outlet_Sales)
str(full)
table(full$Item_Fat_Content)
lookup <- data.frame(Item_Fat_Content = c("LF", "low fat", "Low Fat", "reg", "Regular"), New_Fat_Content = c(rep("Low Fat", 3), rep("Regular", 2)))
lookup
full <- full %>%
left_join(lookup, by = Item_Fat_Content) %>%
select(-Item_Fat_Content)
full <- full %>%
left_join(lookup, by = "Item_Fat_Content") %>%
select(-Item_Fat_Content)
View(full)
str(full)
table(Item_Type)
table(full$Item_Type)
table(full$Item_Type, full$Item_Outlet_Sales)
str(full)
table(full$Item_Type, full$Outlet_Identifier)
table(full$Item_Type, full$Outlet_Identifier)
out_type <-table(full$Item_Type, full$Outlet_Identifier)
class(out_type)
as.data.frame(out_type)
out_type[1,]
out_type[,1]
str(full)
boxplot(full$Outlet_Identifier, full$Item_
Outlet_Sales)
boxplot(full$Outlet_Identifier~full$Item_Outlet_Sales)
example(boxplot)
boxplot(Item_Outlet_Sales~Outlet_Identifier, data = full)
boxplot(Item_Outlet_Sales~Item_Type, data = full)
str(full)
barchart()
bar()
plot(Outlet_Establishment_Year,Item_Outlet_Sales, data = full)
plot(full$Outlet_Establishment_Year,full$Item_Outlet_Sales, data = full)
View(full$Establishment_Year, full$Item_Outlet_Sales)
View(as.data.frame(full$Establishment_Year, full$Item_Outlet_Sales))
View(c(full$Establishment_Year, full$Item_Outlet_Sales))
str(full)
table(full$Item_Type)
table(full$Outlet_Size)
full$Outlet_Size[full$Outlet_Size == ""]
table(full$Outlet_Size)
full$Outlet_Size[full$Outlet_Size == ""] <- "Others"
full$Outlet_Size[full$Outlet_Size == ""]
str(full)
table(full$Outlet_Location_Type)
table(full$Outlet_Type)
str(full)
table(full$Outlet_Size)
summary(full)
unique(full)
str(full)
table(full$Item_Type)
table(full$Outlet_Type)
mean_outlet <- full %>%
group_by(Outlet_Type)
summarize(Mean.Sales = mean(Item_Outlet_Sales)
)
mean_outlet <- full %>%
group_by(Outlet_Type,Item_Outlet_Sales)
summarize(Mean.Sales = mean(Item_Outlet_Sales))
mean_outlet <- full %>%
group_by(Outlet_Type,Item_Outlet_Sales)
summarize(Mean.Sales = mean(Item_Outlet_Sales))
table(mean(full$Item_Outlet_Sales, Outlet_Type))
table(mean(full$Item_Outlet_Sales, full$Outlet_Type))
str(train)
full[1:8523,]
train
full[1:8523,]
train <- full[1:8523,]
test <- full[-(1:8523),]
str(train)
str(test)
test$Item_Outlet_Sales <- NULL
str(test)
train$Item_Type <- as.factor(train$Item_Type)
train$Outlet_Identifier <- as.factor(train$Outlet_Identifier)
train$Outlet_Size <- as.factor(train$Outlet_Size)
train$Outlet_Location_Type <- as.factor(train$Outlet_Location_Type)
train$Outlet_Type <- as.factor(train$Outlet_Type)
train$New_Fat_Content <- as.factor(train$New_Fat_Content)
train.model <- lm(Item_Outlet_Sales~Item_Weight+Item_Weight 
train.model <- lm(Item_Outlet_Sales~Item_Weight+Item_Visibility+Item_Type+Item_MRP+Outlet_Identifier+Outlet_Establishment_Year+Outlet_Size+Outlet_Location_Type+Outlet_Type+New_Fat_Content, data = train)
summary(train.model)
Predictions <- predict(train.model, test)
Predictions
data_predict <- data.frame(test$Item_Identifier, test$Outlet_Identifier, Predictions)
View(data_predict)
data_predict <- data.frame(test$Item_Identifier, test$Outlet_Identifier, Predictions, row.names = NULL)
View(data_predict)
data_predict <- data.frame(Item_Identifier = test$Item_Identifier, Outlet_Identifier = test$Outlet_Identifier, Item_Outlet_Sales = Predictions, row.names = NULL)
View(data_predict)
write.csv(data_predict, file = "Mysubmission.csv")
savehistory("Mycodes.R")
