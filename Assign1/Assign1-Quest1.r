

# Age groups | 1 - Infant (0-1); 2 - Toddler (1-4); 3 - School (4-9); 4 - Older (>9)
# Restraint Type | R - Rear-facing; F - Forward-facing; B - Booster seat; S - Seat belt

data <- read.csv('Child Safety Seat Survey (Win).csv', header = TRUE)

crosstab <- table(data$AgeGroup, data$RestType)

crosstab_margin <- addmargins(crosstab)

crosstab_margin

     