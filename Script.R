
data <- read.csv("2023-June-Unemployment-Rate-by-County-_Percent_")

# Check the structure of the dataset
str(unemployment_data)

colnames(unemployment_data)

# R Script for Box Plot
library(ggplot2)

# Simulated data
data <- data.frame(
  Economic_Activity_Level = rep(c("High", "Low"), each = 1500),
  Unemployment_Rate = c(rnorm(1500, mean = 3, sd = 1), rnorm(1500, mean = 6, sd = 2))
)

# Create Box Plot
ggplot(data, aes(x = Economic_Activity_Level, y = Unemployment_Rate, fill = Economic_Activity_Level)) +
  geom_boxplot() +
  labs(
    title = "Unemployment Rates by Economic Activity Levels",
    x = "Economic Activity Level",
    y = "Unemployment Rate (%)"
  ) +
  theme_minimal()