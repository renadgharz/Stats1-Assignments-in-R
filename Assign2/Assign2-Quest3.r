# 3.1 Poisson Distribution (1)
p_x_0 <- dpois(0,1.3) # P(X=0)

# 3.2 Poisson Distribution (2)
p_x_1 <- dpois(1,1.3) # P(X=1)
expected_time_1_house <- 15 * p_x_0 + 30 * p_x_1 # Formula from laws of expectated values

# 3.3 Coefficient of Variation for 1 House
variance_1_house <- ((15 - expected_time_1_house)^2 * p_x_0^2) + ((30 - expected_time_1_house)^2 * p_x_1^2) # Law of V(X) formula, multiplying by constants

sd_1_house <- sqrt(variance_1_house) # Standard deviation

coeff_of_var_1_house <- sd_1_house / expected_time_1_house # Coefficient of variation

# 3.4 Expected Value of Poisson Distribution
probabilities_100_houses <- data.frame(X = 0:100) # Creating the dataframe
probabilities_100_houses <- probabilities_100_houses %>% mutate(t = c(probabilities_100_houses$X * 30)) # Creating the column for time taken for number of houses requiring delivery
probabilities_100_houses[1,2] <- 15 # t = 0 does not follow the same rule as the other entries so it is manually adjusted
probabilities_100_houses <- probabilities_100_houses %>% mutate("P(t)" = c(dpois(probabilities_100_houses$X,1.3))) # Calculating the probability for each row using Poisson distribution with pipe operator and mutate()
probabilities_100_houses <- probabilities_100_houses %>% mutate("E(t)" = c(probabilities_100_houses$`P(t)` * probabilities_100_houses$t)) # Calculating the expected time take for each number of houses

expected_time_100_houses <- sum(probabilities_100_houses$`E(t)`) # Calculating the total expected time

# 3.5 Coefficient of Variation for 100 Houses
variance_100_houses <- sum((probabilities_100_houses$t - probabilities_100_houses$`E(t)`)^2 * probabilities_100_houses$`P(t)`^2) # calculating the variance of 100 houses
sd_100_houses <- sqrt(variance_100_houses) # Calculating the standard deviation

coeff_of_var_100_houses <- sd_100_houses / expected_time_100_houses # Coefficient of variation of 100 houses
