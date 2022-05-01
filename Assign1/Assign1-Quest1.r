data <- read.csv('Child Safety Seat Survey (Win).csv', header = TRUE)

# 1.1 Contingency Table
crosstab <- table(data$AgeGroup, data$RestType)# Converting data to contingency table
crosstab_margin <- addmargins(crosstab)# Adding margins (sums) to contingency table

prop_table <- prop.table(crosstab)# Converting contingency table to proportion format
prop_table_margin <- addmargins(prop_table)# Adding margins (sums) to proportion contingency table

# 1.2 Data Types
# No calculations required

# 1.3 Side-by-Side Bar Chart



# 1.4 Pie and Stacked Bar Charts



# 1.5 Summary of Data
# No calculations required