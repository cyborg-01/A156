
## Objective
This project investigates the relationship between economic activity levels and unemployment rates in different regions. The primary goal is to identify disparities and provide actionable insights for policy interventions.

## Dataset
- *Region Name*: The name of the county or region analyzed.
- *Region Code*: A numerical identifier for each region.
- *Unemployment Rate*: The dependent variable, expressed as a percentage.

## Research Question
*Is there a significant difference in the unemployment rates between regions with high economic activity and those with low economic activity?*

## Methodology
1. *Data Categorization*:
   - Regions were categorized into "High Economic Activity" and "Low Economic Activity" based on predefined criteria.
2. *Statistical Analysis*:
   - Conducted a two-sample t-test to compare mean unemployment rates.
3. *Visualization*:
   - Created a box plot to illustrate differences between the two categories.

## Key Findings
- Regions with low economic activity exhibit higher unemployment rates and greater variability.
- Outliers in high economic activity regions suggest localized challenges.

## R Script Example
r
# R Script for Box Plot
library(ggplot2)
data$Economic_Activity_Level <- ifelse(data$Region_Code %in% c(101, 102, 103), "High", "Low")

ggplot(data, aes(x = Economic_Activity_Level, y = Unemployment_Rate, fill = Economic_Activity_Level)) +
  geom_boxplot() +
  labs(
    title = "Unemployment Rates by Economic Activity Levels",
    x = "Economic Activity Level",
    y = "Unemployment Rate (%)"
