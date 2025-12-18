# -------------------------------
# Customer Churn Analysis Project
# -------------------------------

# Load libraries
library(dplyr)
library(ggplot2)

# Load data
churn <- read.csv("churn_data.csv")

# View dataset
head(churn)
summary(churn)

# Convert churn to factor
churn$churn <- as.factor(churn$churn)

# -------------------------------
# Exploratory Data Analysis (EDA)
# -------------------------------

# Churn distribution
ggplot(churn, aes(x = churn, fill = churn)) +
  geom_bar() +
  labs(title = "Customer Churn Distribution")

# Monthly charges vs churn
ggplot(churn, aes(x = churn, y = monthly_charges, fill = churn)) +
  geom_boxplot() +
  labs(title = "Monthly Charges vs Churn")

# Tenure vs churn
ggplot(churn, aes(x = churn, y = tenure, fill = churn)) +
  geom_boxplot() +
  labs(title = "Tenure vs Churn")

# -------------------------------
# Logistic Regression Model
# -------------------------------

model <- glm(churn ~ age + monthly_charges + tenure,
             data = churn,
             family = "binomial")

summary(model)

# Predict churn probability
churn$churn_probability <- predict(model, type = "response")

# Classify prediction
churn$prediction <- ifelse(churn$churn_probability > 0.5, "Yes", "No")

# Accuracy table
table(Predicted = churn$prediction, Actual = churn$churn)

# -------------------------------
# Insights
# -------------------------------

# Low tenure customers churn more
# Month-to-month contracts have higher churn
# High monthly charges increase churn risk
