# 4.1 Shape of Sampling Distribution
# No coding required

# 4.2 Mean and Standard Deviation
cust_above_20_mean <- 0.68
cust_above_20_sd <- sqrt((cust_above_20_mean * (1 - cust_above_20_mean)) / 500)

# 4.3 Probability of Sample Proportion
zscore_lower_bound <- ((cust_above_20_mean - 0.03) - cust_above_20_mean) / cust_above_20_sd
zscore_lower_bound <- round(zscore_lower_bound, digits = 2)

zscore_upper_bound <- ((cust_above_20_mean + 0.03) - cust_above_20_mean) / cust_above_20_sd
zscore_upper_bound <- round(zscore_upper_bound, digits = 2)

p_sample_prop_within_0.03 <- pnorm(zscore_upper_bound, lower.tail = TRUE) - pnorm(zscore_lower_bound, lower.tail = TRUE)
