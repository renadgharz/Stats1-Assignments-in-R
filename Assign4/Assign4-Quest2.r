# Loading required libraries
library(readxl)

assign4_q2_data <- read_excel('./Assign4/Assignment 4 Data.xlsx', sheet = "Question 2") # Importing data from Excel worksheet

speed_quartile_85 <- quantile(assign4_q2_data$Speeds, 0.85) # 85% percentile of the data
