# Load the dataset
sales_data <- read.csv("Amazon Sale Report.csv")
# Summary statistics
summary(sales_data)
# Assuming 'Amount' represents sales and 'Category' denotes different product categories
# Perform ANOVA or other suitable tests for comparing sales among categories
anova_result <- aov(Amount ~ Category, data = sales_data)
summary(anova_result)
# Convert 'Date' column to proper date format
sales_data$Date <- as.Date(sales_data$Date)
# Aggregate sales data by month
library(dplyr)
library(ggplot2)
sales_data_monthly <- sales_data %>%
  group_by(YearMonth = format(Date, "%Y-%m")) %>%
  summarise(TotalSales = sum(Amount))
# Check for missing values in the 'Amount' column
sum(is.na(sales_data$Amount))

# Remove rows with missing 'Amount' values (if appropriate)
sales_data <- sales_data[!is.na(sales_data$Amount), ]


# Plotting monthly sales trend
ggplot(sales_data_monthly, aes(x = YearMonth, y = TotalSales)) +
  geom_line() +
  labs(x = "Date", y = "Total Sales", title = "Monthly Total Sales Trend")
# Perform linear regression
model <- lm(Amount ~ Qty + Category, data = sales_data)
summary(model)
