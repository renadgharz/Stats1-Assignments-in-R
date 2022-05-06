# 2.1 Contingency Tables
cable_service_table <- data.frame(B = c(8.2, 10.1, 18.3), 
                                  B_c = c(10.9, 8.8, 19.7), 
                                  Sum = c(19.1, 18.9, 38), 
                                  row.names = c("A", "A_c", "Sum")) # Creating "crosstab" of the data using data.frame()
                                                                    # Can't use table() function because full dataset is not provided

cable_service_table_prop <- data.frame(B = c(8.2, 10.1, 18.3), 
                                       B_c = c(10.9, 8.8, 19.7), 
                                       Sum = c(19.1, 18.9, 38), 
                                       row.names = c("A", "A_c", "Sum")) %>% 
  mutate(across(where(is.numeric)) / cable_service_table[3,3]) # Converting crosstab from frequencies to proportions using pipe operator and mutate()

# 2.2 Probability of Union
prob_A_u_B <- cable_service_table_prop[1,3] + cable_service_table_prop[3,1] - cable_service_table_prop[1,1] # Formula of union: P(AuB)=P(A)+P(B)-P(AnB)

# 2.3 Probability of Intersection
prob_Ac_n_Bc <- cable_service_table_prop[2,2] # Joint probability

# 2.4 Mutually Exclusive Events
# No calculations are required

# 2.5 Independence of Events
cable_service_table_prop[1,1] == cable_service_table_prop[1,3] * cable_service_table_prop[3,1]  # Since joint probability of A and B are not equal to the product of the individual probabilities of A and B, they are not independent

# 2.6 Conditional Probability
prob_Bc_given_A <- cable_service_table_prop[1,2] / cable_service_table_prop[1,3] # Join probability of events A and B divided by the marginal probability of A
