data <- read.csv('./Assign1/Child Safety Seat Survey (Win).csv', header = TRUE)

# 1.1 Contingency Table
crosstab <- table(data$AgeGroup, data$RestType)# Converting data to contingency table
crosstab_margin <- addmargins(crosstab)# Adding margins (sums) to contingency table

prop_table <- prop.table(crosstab)# Converting contingency table to proportion format
prop_table_margin <- addmargins(prop_table)# Adding margins (sums) to proportion contingency table

# 1.2 Data Types
# No calculations required

# 1.3 Side-by-Side Bar Chart
library(ggplot2) # Loading required package 
library(tidyverse) # Loading required package

dat = tibble(B=c(1,117,450,16), F=c(52,483,98,0), R=c(181,49,0,0), S=c(0,3,325,627))
dat = dat %>%  
  gather(key=dat$dat, value=value)

ggplot(data=dat, aes(x=1:4, y=value, fill=dat)) + 
  geom_bar(stat='identity', position='dodge')

# 1.4 Pie and Stacked Bar Charts
crosstab_stackedbars <- barplot(crosstab)


# 1.5 Summary of Data
# No calculations required