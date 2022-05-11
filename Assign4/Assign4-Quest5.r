# 5.1 Probability of Random Event
annual_salary_new_grad_mean <- 68000
annual_salary_new_grad_sd <- 4000

zscore_greater_70k <- (70000 - annual_salary_new_grad_mean) / annual_salary_new_grad_sd
p_salary_greater_70k <- pnorm(zscore_greater_70k, lower.tail = FALSE)

# 5.2 Probability of Sample Mean
new_grad_sample_size <- 5
zscore_mean_greater_70k <- (70000 - annual_salary_new_grad_mean) / (annual_salary_new_grad_sd / sqrt(5))
p_mean_salary_greater_70k <- pnorm(zscore_mean_greater_70k, lower.tail = FALSE)

# 5.3 Cumulative Probability of Random Event
p_x_5_salary_greater_70k <- dbinom(5,5, prob = p_salary_greater_70k)
