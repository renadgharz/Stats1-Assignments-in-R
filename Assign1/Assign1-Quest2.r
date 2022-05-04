# 2.1 Contingency Tables
cable_service_table <- data.frame(B = c(8.2, 10.1, 18.3), 
                                  B_c = c(10.9, 8.8, 19.7), 
                                  Sum = c(19.1, 18.9, 38), 
                                  row.names = c("A", "A_c", "Sum"))

library(dplyr)
cable_service_table_prop <- cable_service_table
cable_service_table_prop %>% mutate(across(where(is.numeric)) / 38)
                                    