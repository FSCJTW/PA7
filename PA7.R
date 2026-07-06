# Programming Assignment 7
# T. Wallace
# 07/05/2026
# Grass Blade Length Analysis

# Parameters
mu <- 10
variance <- 2
sigma <- sqrt(variance)

# 1. Probability between 9.5 and 11 mm
prob_between <- pnorm(11, mean = mu, sd = sigma) - 
  pnorm(9.5, mean = mu, sd = sigma)
cat("Probability blade is between 9.5 and 11 mm:", prob_between, "\n\n")

# 2. Standardized values (Z-scores) and confirmation
z_9.5 <- (9.5 - mu) / sigma
z_11  <- (11 - mu) / sigma
prob_z <- pnorm(z_11) - pnorm(z_9.5)
cat("Probability from Z-scores for 9.5 and 11 mm:", prob_z, "\n\n")

# 3. Shortest 2.5% blade length (2.5th percentile)
shortest_2.5 <- qnorm(0.025, mean = mu, sd = sigma)
cat("Blade length below shortest 2.5%:", shortest_2.5, "mm\n\n")

# 4. Standardize the 2.5th percentile value
z_shortest <- (shortest_2.5 - mu) / sigma
cat("Z-score of shortest 2.5% blade:", z_shortest, "\n")