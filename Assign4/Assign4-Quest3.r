# Loading required libraries
library(readxl)
library(RColorBrewer)

assign4_q3_data <- read_excel('./Assign4/Assignment 4 Data.xlsx', sheet = "Question 3") # Importing data from Excel worksheet

# 3.1 Boxplots Comparison
coop_salaries_grouped_boxplots <- boxplot(assign4_q3_data$`Bus. Admin.`, 
                                          assign4_q3_data$Accounting, 
                                          assign4_q3_data$Finance, 
                                          assign4_q3_data$Marketing,
                                          main = "Co-op Salaries of Recent Graduates by Degrees",
                                          sub = "Side-by-Side Boxplots",
                                          xlab = "Degrees",
                                          ylab = "Salaries (in $)",
                                          col = brewer.pal(n = 4, name = "Accent"),
                                          names = colnames(assign4_q3_data))

coop_salaries_grouped_boxplots_summary <- summary(coop_salaries_grouped_boxplots$stats)

# 3.2 Reporting Findings
# No calculations required
