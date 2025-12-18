# Customer Churn Analysis & Prediction Using R

## Project Overview
This project analyzes customer churn data using R. It performs data cleaning, exploratory data analysis (EDA), visualization, and builds a logistic regression model to predict churn. The insights help businesses identify high-risk customers and improve retention strategies.

---

## Skills Demonstrated
- Data Cleaning & Preprocessing  
- Exploratory Data Analysis (EDA)  
- Data Visualization using `ggplot2`  
- Logistic Regression Modeling  
- Business Insight Extraction  

---

## Dataset
- `churn_data.csv` (sample dataset included)  
- Can be replaced with real-world datasets from telecom or banking sectors  

### Sample Data Structure
| customer_id | age | monthly_charges | tenure | contract        | churn |
|-------------|-----|----------------|--------|----------------|-------|
| 1           | 25  | 45             | 6      | Month-to-month | Yes   |
| 2           | 45  | 80             | 24     | One year       | No    |

---

## How to Run in RStudio

1. **Install R and RStudio**
   - R: [https://cran.r-project.org/](https://cran.r-project.org/)  
   - RStudio: [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/)  

2. **Install Required Packages**  
Open RStudio and run:

```r
install.packages("dplyr")
install.packages("ggplot2")
