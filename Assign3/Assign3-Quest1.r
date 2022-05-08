# Creating vectors of the data
lc <- c(24.5,27.2) # Cost of license fees
pc <- c(1.1,6.2) # Cost of purchasing podcasts
rv <- c(43.9,51.9) # Revenues (subscriptions and advertising)

# 1.1 Coefficient of Variation

# Calculating the means of each item
mean_lc <- mean(lc) # Mean of license costs
mean_pc <- mean(pc) # Mean of podcasts costs
mean_rv <- mean(rv) # Mean of revenues

# Calculating the standard deviation of each item
sd_lc <- sd(lc) # Standard Deviation of license costs
sd_pc <- sd(pc) # Standard Deviation of podcasts costs
sd_rv <- sd(rv) # Standard Deviation of revenues

# Calculating the coefficients of variation of each item
coeff_var_lc <- sd_lc / mean_lc # Coefficient of variation of license costs
coeff_var_pc <- sd_pc / mean_pc # Coefficient of variation of podcast costs
coeff_var_rv <- sd_rv / mean_rv # Coefficient of variation of revenues
  
# 1.2 Confidence Interval for Costs
exp_tc <- mean_lc + mean_pc # Expected value of total costs
sd_tc <- sqrt(sd_lc^2 + sd_pc^2) # Standard deviation of total costs

z_score_tc <- qnorm(0.05) # Z score; Since this is a 2 sided 90% CI, we look for the Z-score of alpha/2 = 0.05

ci_lower_tc <- exp_tc + z_score_tc * sd_tc # CI lower bound
ci_upper_tc <- exp_tc - z_score_tc * sd_tc # CI upper bound

# 1.3 Confidence Interval for Profits
exp_pr <-  mean_rv - exp_tc # Expected value of profits
sd_pr <- sqrt(sd_rv^2 + sd_tc^2 - 2 * 0.58 * sd_rv * sd_tc) # Standard deviatin of profits

z_score_pr <- qnorm(0.05) # Z score; Since this is a 2 sided 90% CI, we look for the Z-score of alpha/2 = 0.05

ci_lower_pr <- exp_pr + z_score_pr * sd_pr # CI lower bound
ci_upper_pr <- exp_pr - z_score_pr * sd_pr # CI upper bound

# 1.4 Coefficient of Variation of Profits
coeff_var_pr <- sd_pr / exp_pr
