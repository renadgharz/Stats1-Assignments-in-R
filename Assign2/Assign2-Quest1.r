library(data.tree) # Loading required package

# 1.1 Conditional Probability
# No calculations required

# 1.2 Probability Tree
tree <- Node$new("Hydrogen Aircraft")
  efficient_80_percent <- tree$AddChild("80% Efficient Aircraft")
    economic_5_years <- efficient_80_percent$AddChild("Economical in 5 Years")
      efficient_80_percent_and_economic_5_years <- economic_5_years$AddChild("80% Efficient Aircraft and Economical in 5 Years")
    not_economic_5_years <- efficient_80_percent$AddChild("Not Economical in 5 Years")
      efficient_80_percent_and_not_economic_5_years <- not_economic_5_years$AddChild("80% Efficient Aircraft and Not Economical in 5 Years")
  efficient_90_percent <- tree$AddChild("90% Efficient Aircraft")
    economic_5_years <- efficient_90_percent$AddChild("Economical in 5 Years")
      efficient_90_percent_and_economic_5_years <- economic_5_years$AddChild("90% Efficient Aircraft and Economical in 5 Years")
    not_economic_5_years <- efficient_90_percent$AddChild("Not Economical in 5 Years")
      efficient_90_percent_and_not_economic_5_years <- not_economic_5_years$AddChild("90% Efficient Aircraft and Not Economical in 5 Years")        

tree$`80% Efficient Aircraft`$p <- 0.3
  tree$`80% Efficient Aircraft`$`Economic in 5 Years`$p <- 0.6
    tree$`80% Efficient Aircraft`$`Economic in 5 Years`$`80% Efficient Aircraft and Economic in 5 Years`$p <- tree$`80% Efficient Aircraft`$p * tree$`80% Efficient Aircraft`$`Economic in 5 Years`$p
  tree$`80% Efficient Aircraft`$`Not Economic in 5 Years`$p <- 0.4
    tree$`80% Efficient Aircraft`$`Not Economic in 5 Years`$`80% Efficient Aircraft and Not Economic in 5 Years`$p <- tree$`80% Efficient Aircraft`$p * tree$`80% Efficient Aircraft`$`Not Economic in 5 Years`$p
tree$`90% Efficient Aircraft`$p <- 0.7
  tree$`90% Efficient Aircraft`$`Economic in 5 Years`$p <- 0.8
    tree$`90% Efficient Aircraft`$`Economic in 5 Years`$`90% Efficient Aircraft and Economic in 5 Years`$p <- tree$`90% Efficient Aircraft`$p * tree$`90% Efficient Aircraft`$`Economic in 5 Years`$p
  tree$`90% Efficient Aircraft`$`Not Economic in 5 Years`$p <- 0.2
    tree$`90% Efficient Aircraft`$`Not Economic in 5 Years`$`90% Efficient Aircraft and Not Economic in 5 Years`$p <- tree$`90% Efficient Aircraft`$p * tree$`90% Efficient Aircraft`$`Not Economic in 5 Years`$p

# 1.3 Joint Probabilities
p_economic_5_years <- tree$`80% Efficient Aircraft`$`Economic in 5 Years`$`80% Efficient Aircraft and Economic in 5 Years`$p + tree$`90% Efficient Aircraft`$`Economic in 5 Years`$`90% Efficient Aircraft and Economic in 5 Years`$p

# 1.4 Extended Probability Tree
tree_new <- Node$new("Hydrogen Aircraft")
  efficient_80_percent <- tree_new$AddChild("80% Efficient Aircraft")
    economic_5_years <- efficient_80_percent$AddChild("Economical in 5 Years (Hydrogen)")
      economic_7_years <- economic_5_years$AddChild("Economical in 7 Years (Electric)")
        efficient_80_percent_and_economic_5_years_and_economic_7_years <- economic_7_years$AddChild("80% Efficient Aircraft and Economical in 5 and 7 Years; Hydrogen, Electric")
      not_economic_7_years <- economic_5_years$AddChild("Not Economical in 7 Years (Electric)")
        efficient_80_percent_and_economic_5_years_and_not_economic_7_years <- not_economic_7_years$AddChild("80% Efficient Aircraft and Economical in 5 but not 7 years; Hydrogen, Electric")
    not_economic_5_years <- efficient_80_percent$AddChild("Not Economical in 5 Years (Hydrogen)")
      economic_7_years <- not_economic_5_years$AddChild("Economical in 7 Years (Electric)")
        efficient_80_percent_and_not_economic_5_years_and_economic_7_years <- economic_7_years$AddChild("80% efficient aircraft and not economical in 5 but in 7 years; Hydrogen, Electric")
      not_economic_7_years <- not_economic_5_years$AddChild("Not Economical in 7 Years (Electric)")
        efficient_80_percent_and_not_economic_5_years_and_not_economic_7_years <- not_economic_7_years$AddChild("80% efficient Aicraft and not economical in 5 nor 7 years; Hydrogen, Electric")
  efficient_90_percent <- tree_new$AddChild("90% Efficient Aircraft")
    economic_5_years <- efficient_90_percent$AddChild("Economical in 5 Years (Hydrogen)")
      economic_7_years <- economic_5_years$AddChild("Economical in 7 Years (Electric)")
        efficient_90_percent_and_economic_5_years_and_economic_7_years <- economic_7_years$AddChild("90% Efficient Aircraft and economical in 5 and 7 years; Hydrogen, Electric")
      not_economic_7_years <- economic_5_years$AddChild("Not Economical in 7 Years (Electric)")
        efficient_90_percent_and_economic_5_years_and_not_economic_7_years <- not_economic_7_years$AddChild("90% Efficient Aircraft and economical in 5 but not 7 years; Hydrogen, Electric")
    not_economic_5_years <- efficient_90_percent$AddChild("Not Economical in 5 Years (Hydrogen)")
      economic_7_years <- not_economic_5_years$AddChild("Economical in 7 Years (Electric)")
        efficient_90_percent_and_not_economic_5_years_and__economic_7_years <- economic_7_years$AddChild("90% Efficient Aircraft and not economical in 5 but in 7 years; Hydrogen, Electric")
      not_economic_7_years <- not_economic_5_years$AddChild("Not Economical in 7 years (Electric)")
        efficient_90_percent_and_not_economic_5_years_and_not_economic_7_years <- not_economic_7_years$AddChild("90% efficient Aicraft and not economical in 5 nor 7 years; Hydrogen, Electric")

tree_new$`80% Efficient Aircraft`$p <- 0.3
  tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p <- 0.6
    tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p <- 0.5
      tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$`80% Efficient Aircraft and Economical in 5 and 7 Years; Hydrogen, Electric`$p <- tree_new$`80% Efficient Aircraft`$p * tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p * tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p
    tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p <- 0.5
      tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$`80% Efficient Aircraft and Economical in 5 but not 7 years; Hydrogen, Electric`$p <- tree_new$`80% Efficient Aircraft`$p * tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p * tree_new$`80% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p
  tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p <- 0.4
    tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p <- 0.1
      tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$`80% efficient aircraft and not economical in 5 but in 7 years; Hydrogen, Electric`$p <- tree_new$`80% Efficient Aircraft`$p * tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p * tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p
    tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p <- 0.9
      tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$`80% efficient Aicraft and not economical in 5 nor 7 years; Hydrogen, Electric`$p <- tree_new$`80% Efficient Aircraft`$p * tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p * tree_new$`80% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p
tree_new$`90% Efficient Aircraft`$p <- 0.7
  tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p <- 0.8
    tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p <- 0.5
      tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$`90% Efficient Aircraft and economical in 5 and 7 years; Hydrogen, Electric`$p <- tree_new$`90% Efficient Aircraft`$p * tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p * tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p
    tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p <- 0.5
      tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$`90% Efficient Aircraft and economical in 5 but not 7 years; Hydrogen, Electric`$p <- tree_new$`90% Efficient Aircraft`$p * tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$p * tree_new$`90% Efficient Aircraft`$`Economical in 5 Years (Hydrogen)`$`Not Economical in 7 Years (Electric)`$p
  tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p <- 0.2
    tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p <- 0.1
      tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$`90% Efficient Aircraft and not economical in 5 but in 7 years; Hydrogen, Electric`$p <- tree_new$`90% Efficient Aircraft`$p * tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p * tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Economical in 7 Years (Electric)`$p      
    tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 years (Electric)`$p <- 0.9
      tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 years (Electric)`$`90% efficient Aircraft and not economical in 5 nor in 7 years; Hydrogen, Electric`$p <- tree_new$`90% Efficient Aircraft`$p * tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$p * tree_new$`90% Efficient Aircraft`$`Not Economical in 5 Years (Hydrogen)`$`Not Economical in 7 years (Electric)`$p      
    
# 1.5 Bayes' Theorem
