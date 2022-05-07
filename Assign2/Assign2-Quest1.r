library(data.tree) # Loading required package

# 1.1 Conditional Probability
# No calculations required

# 1.2 Probability Tree
tree <- Node$new("Hydrogen Aircraft")
  efficient_80_percent <- tree$AddChild("80% Efficient Aircraft")
    economic_5_years <- efficient_80_percent$AddChild("Economic in 5 Years")
      efficient_80_percent_and_economic_5_years <- economic_5_years$AddChild("80% Efficient Aircraft and Economic in 5 Years")
    not_economic_5_years <- efficient_80_percent$AddChild("Not Economic in 5 Years")
      efficient_80_percent_and_not_economic_5_years <- not_economic_5_years$AddChild("80% Efficient Aircraft and Not Economic in 5 Years")
  efficient_90_percent <- tree$AddChild("90% Efficient Aircraft")
    economic_5_years <- efficient_90_percent$AddChild("Economic in 5 Years")
      efficient_90_percent_and_economic_5_years <- economic_5_years$AddChild("90% Efficient Aircraft and Economic in 5 Years")
    not_economic_5_years <- efficient_90_percent$AddChild("Not Economic in 5 Years")
      efficient_90_percent_and_not_economic_5_years <- not_economic_5_years$AddChild("90% Efficient Aircraft and Not Economic in 5 Years")        

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

# 1.4 Extended Probability Tree

# 1.5 Bayes' Theorem