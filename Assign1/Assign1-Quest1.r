data <- read.csv('./Assign1/Child Safety Seat Survey (Win).csv', header = TRUE) # Importing data into RStudio

library(RColorBrewer) #Loading library

# 1.1 Contingency Table
crosstab <- table(data$AgeGroup, data$RestType)# Converting data to contingency table
crosstab_margins <- addmargins(crosstab)# Adding margins (sums) to contingency table

prop_table <- prop.table(crosstab)# Converting contingency table to proportion format
prop_table_margins <- addmargins(prop_table)# Adding margins (sums) to proportion contingency table

# 1.2 Data Types
# No calculations required

# 1.3 Side-by-Side Bar Chart
crosstab_inverse <- table(data$RestType, data$AgeGroup) # Flipping rows and columns of the crosstab
crosstab_stackedbars <- barplot(crosstab_inverse, 
                                beside = TRUE,
                                main = "Restaint Types by Age Groups",
                                sub = "Clustered Bar Chart",
                                xlab = "Age Groups",
                                ylab = "Frequencies",
                                col = brewer.pal(n = 4, name = "Accent"),
                                legend.text = c("B","F","R","S"),
                                args.legend = list(x = "topleft", 
                                                   bty = "n", 
                                                   inset=c(0.01, 0)))# Clustered bar chart comparing restraint types across the 4 age groups

# 1.4 Stacked Bar Charts
crosstab_clustered_bars <- barplot(crosstab_inverse,
                                main = "Restaint Types by Age Groups",
                                sub = "Stacked Bar Chart",
                                xlab = "Age Groups",
                                ylab = "Frequencies",
                                col = brewer.pal(n = 4, name = "Accent"),
                                legend.text = c("B","F","R","S"),
                                args.legend = list(x = "topleft", 
                                                   bty = "n", 
                                                   inset=c(0.01, 0))) # Stacked bar chart comparing restraint types across the 4 age groups

prop_table_inverse <- prop.table(crosstab_inverse) * 100 # Converting proportions to percentages for better legibility
crosstab_stackedbars <- barplot(prop_table_inverse,
                                main = "Restaint Types by Age Groups (%)",
                                sub = "Stacked Bar Chart",
                                xlab = "Age Groups",
                                ylab = "Percentages",
                                col = brewer.pal(n = 4, name = "Accent"),
                                legend.text = c("B","F","R","S"),
                                args.legend = list(x = "topleft", 
                                                   bty = "n", 
                                                   inset=c(0.01, 0))) # Stacked bar chart comparing restraint types across the 4 age groups (in %)

# 1.5 Summary of Data
# No calculations required