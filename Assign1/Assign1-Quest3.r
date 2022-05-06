#Building dataframes to import the data
delta_flights <- data.frame(OnTime = c(248,110,106,252,920,1636),
                            Delayed = c(31,6,10,51,152,250),
                            Total = c(279,116,116,303,1072,1886),
                            row.names = c("Los Angeles","Phoenix","San Diego","San Francisco","Seattle","Total"))

frontier_flights <- data.frame(OnTime = c(231,1613,128,107,67,2146),
                               Delayed = c(39,138,22,43,20,262),
                               Total = c(270,1751,150,150,87,2408),
                               row.names = c("Los Angeles","Phoenix","San Diego","San Francisco","Seattle","Total"))

#Building new dataframes to represent data as proportions
delta_flights_prop <- data.frame(OnTime = c(248,110,106,252,920,1636),
                                 Delayed = c(31,6,10,51,152,250),
                                 Total = c(279,116,116,303,1072,1886),
                                 row.names = c("Los Angeles","Phoenix","San Diego","San Francisco","Seattle","Total")) %>%
  mutate(across(where(is.numeric)) / delta_flights[6,3])

frontier_flights_prop <- data.frame(OnTime = c(231,1613,128,107,67,2146),
                                    Delayed = c(39,138,22,43,20,262),
                                    Total = c(270,1751,150,150,87,2408),
                                    row.names = c("Los Angeles","Phoenix","San Diego","San Francisco","Seattle","Total")) %>%
  mutate(across(where(is.numeric)) / frontier_flights[6,3])

# 3.1 Marginal Probabilities

# 3.2 Conditional Probabilities

# 3.3 Simpson's Paradox
# No calculations required
