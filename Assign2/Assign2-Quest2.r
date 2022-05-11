# 2.1 Finding p and n
# No R code required

# 2.2 Binomial Distribution
p_x_5 <- dbinom(5,10,0.4) # P(X=5)
p_x_6 <- dbinom(6,10,0.4) # P(X=6)
p_x_7 <- dbinom(7,10,0.4) # P(X=7)
p_x_8 <- dbinom(8,10,0.4) # P(X=8)
p_x_9 <- dbinom(9,10,0.4) # P(X=9)
p_x_10 <- dbinom(10,10,0.4) # P(X=10)

# Creating a dataframe to summarize the probability data from above
binomial_prob_summary <- data.frame(X = 5:10,
                                    C = 1:6,
                                    "P(x)" = c(p_x_5,p_x_6,p_x_7,p_x_8,p_x_9,p_x_10)) 

# 2.3 Expected Value of Binomial Distribution
library(dplyr) # Loading required package
binomial_prob_summary <- binomial_prob_summary %>% mutate("E(x)"=binomial_prob_summary$P.x. * binomial_prob_summary$C) # Mutating the dataframe with pipe operator to add new column for expected charge per transaction
expected_total_charges <- sum(binomial_prob_summary$`E(x)`) # Calculating the expected total charges by summing the individual expected charges of each level of transaction
