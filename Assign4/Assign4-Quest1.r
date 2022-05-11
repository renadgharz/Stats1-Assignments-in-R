# Loading required libraries
library(readxl) 
library(DescTools)

assign4_q1_data <- read_excel('./Assign4/Assignment 4 Data.xlsx', sheet = "Question 1") # Importing data from Excel worksheet

# 1.1 Mean, Median, and Mode
hours_online_mean <- mean(assign4_q1_data$Hours) # Mean of hours
hours_online_median <- median(assign4_q1_data$Hours) # Median of hours
hours_online_mode <- Mode(assign4_q1_data$Hours) # Mode of hours

# 1.2 Variance and Standard Deviation
hours_online_var <- var(assign4_q1_data$Hours) # Variance of hours
hours_online_sd <- sd(assign4_q1_data$Hours) # Standard deviation of hours

# 1.3 Boxplot
hours_online_boxplot <- boxplot(assign4_q1_data$Hours,
                                main = "Hours Spent on Online Shopping",
                                sub = "Boxplot",
                                ylab = "Number of Hours")
hours_online_summary <- summary(assign4_q1_data$Hours)

# 1.4 Quartiles and IQR
hours_online_quart1 <- quantile(assign4_q1_data$Hours, 0.25) # First quartile
hours_online_quart2 <- quantile(assign4_q1_data$Hours, 0.5) # Second quartile
hours_online_quart3 <- quantile(assign4_q1_data$Hours, 0.75) # Third quartile
hours_online_IQR <- IQR(assign4_q1_data$Hours) # Interquartile range of the sample

# 1.5 Reporting Findings
# No calculations required