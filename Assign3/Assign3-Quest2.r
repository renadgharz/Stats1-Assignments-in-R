# Loading required libraries
library(readxl) 
library(plyr)

data_sun_wind <- read_excel("./Assign3/A3P2 Data .xlsx") # Importing data

# 2.1 Scatterplot
wind_sun_scatter <- plot(x = data_sun_wind$`Wind Output (kWh)`, 
                         y = data_sun_wind$`Solar Output (kWh)`,
                         xlab = "Wind Output (in kWh)",
                         ylab = "Solar Output (in kWh)",
                         xlim = c(20,160),
                         ylim = c(0,80),
                         main = "Wind Output Against Solar Output (in kWh)",
                         sub = "Scatterplot") # Scatterplot of wind and sun data

# 2.2 Plot Analysis
# No calculations required

# 2.3 Extreme Points/Outliers
# No calculations required

# 2.4 Correlation Coefficient
sun_wind_cor <- cor(data_sun_wind$`Wind Output (kWh)`, data_sun_wind$`Solar Output (kWh)`) # Correlation coefficient of wind and sun output

# 2.5 Negative Correlation Explanation
# No calculations required

# 2.6 Histogram - Wind Output
wind_hist_bins <- round(log(168, 2), digits = 0) # Log of 168 (number of observations in sample) with a base of 2 to find the initial number of bins

hist(data_sun_wind$`Wind Output (kWh)`,
     xlab = "Wind Output (Bins)",
     ylab = "Frequency of Observations",
     main = "Wind Output Frequencies (kWh)",
     sub = "Histogram",
     breaks = wind_hist_bins) # Histogram of wind output

# 2.7 Histogram - Solar Output
solar_hist_bins <- round(log(168, 2), digits = 0) # Log of 168 (number of observations in sample) with a base of 2 to find the initial number of bins

hist(data_sun_wind$`Solar Output (kWh)`,
     xlab = "Solar Output (Bins)",
     ylab = "Frequency of Observations",
     main = "Solar Output Frequencies (kWh)",
     sub = "Histogram",
     breaks = solar_hist_bins) # Histogram of solar output

# 2.8 Scatterplot vs Histogram
# No calculations required
