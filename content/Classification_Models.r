# Libraries required for Machine Learning
library(caret)
library(tidyverse)

# Load the data
data <- read.csv("loan_approval_dataset.csv", stringsAsFactors = TRUE)

# View structure
str(data)
summary(data)
table(data$loan_status)  

# Check for missing values
sapply(data, function(x) sum(is.na(x)))

# Impute missing values (optional)
preProcess_missingdata_model <- preProcess(data, method='medianImpute')
data <- predict(preProcess_missingdata_model, newdata = data)

# Convert target to factor (if not already)
data$loan_status <- as.factor(data$loan_status)



set.seed(123)
trainIndex <- createDataPartition(data$loan_status, p = .8, 
                                  list = FALSE, 
                                  times = 1)
train <- data[trainIndex, ]
test  <- data[-trainIndex, ]

# Set up cross-validation
train_control <- trainControl(method = "cv", number = 15)

names(data)

# Train GLM model
glm_model <- train(loan_status ~ cibil_score+loan_term+self_employed+education+
                     income_annum+loan_amount, 
                   data = train, 
                   method = "glm", 
                   family = "binomial",
                   trControl = train_control)

summary(glm_model)

# Summary
print(glm_model)

# Predictions
preds <- predict(glm_model, newdata = test)
preds
confusionMatrix(preds, test$loan_status)


model <- rpart(loan_status ~., data = train)
as.data.frame(model$variable.importance)
rpart.plot(model)+scale_y_log10()


prediction=predict(model,newdata = test,type="class")
confusionmatrix <- confusionMatrix(prediction,test$loan_status)
confusionmatrix

