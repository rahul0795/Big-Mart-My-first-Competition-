# Big-Mart-My-first-Competition-
It is my first submission on AnalyticsVidhya.com

# This is Why I have used a very simple Linear regression algorithim to get a taste of Data science competitions.
# I have not used any advanced techniques like cross tabulation and boosting for now.
# The moto was to get started with the competions
# So, without further ado, lets get started

# First, lets read in the test and train data sets

train <- read.csv("traindata.csv", stringsAsFactors = FALSE)
test <- read.csv("testdata.csv", stringsAsFactors = FALSE)

# Make sure that, all the train and test csv files are in your working directory
# To check the working directory
getwd()

# To set the working directory
setwd()
# lets check the structure of the train data and test data
str(train)
str(test)
# as expected, the test data set has 11 columns while the train data set has 12 column
# It is quite obvious since out goal is to train the data and predict the test data

#For, the purpose of data cleaning and missing value treatment, lets combine the data set. To do this, lets create a pseudo 
# varaible in the test data set and name it "Item_Outlet_Sales" which is our response varaible.

test$Item_Outlet_Sales <- 1
str(test)
full <- rbind(train, test)
str(full)
table(full$Item_Identifier)
str(full)
qplot(Item_Weight, data = full)
library(ggplot2)
qplot(Item_Weight, data = full)
qplot(Item_Weight, data = full, bins = 50)
summary(full)
summary(full)
full$Item_Weight[is.na(full$Item_Weight)] <- median(full$Item_Weight, na.rm = TRUE)
summary(full)
table(is.na(full))
full$Item_Visibility
full$Item_Visibility[full$Item_Visibility == 0.0,]
full$Item_Visibility[full$Item_Visibility == 0.0]
full$Item_Visibility[full$Item_Visibility == 0.0] <- median(full$Item_Visibility)
full$Item_Visibility[full$Item_Visibility == 0.0]
summary(full)
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
