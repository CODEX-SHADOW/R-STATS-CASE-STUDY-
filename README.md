# R-STATS-CASE-STUDY 5
Case Study: Analyzing Sales Data
An e-commerce company wants to analyze their sales data to gain insights into their sales performance over the past year. They have a dataset containing information about sales made, including dates, product categories, prices, and customer demographics.
Explore the dataset that is attached to understand its structure and characteristics.
Perform descriptive statistics to summarize the sales data.
Conduct hypothesis testing to determine if there's a significant difference in sales between different product categories.
Visualize sales trends over time.
Perform a simple linear regression analysis using the sales data to understand the relationship between sales amount and potentially relevant predictor variables.
 
solution
Linear Regression Interpretation:
The linear regression model has been successfully fitted; however, it seems that 'CategoryTop' might not be statistically significant as indicated by the high p-value (p = 0.5798).
Handling Missing Values:
There are missing values in the 'Amount' column, which were excluded from the analysis. Consider imputation or handling missing values appropriately based on your analysis goals and dataset characteristics.
Summary Statistics:
The summary statistics provide an overview of the numerical columns in your dataset:
Qty (Quantity Sold): The minimum quantity sold is 0, while the maximum is 15 with an average (mean) around 0.9. The median quantity sold is 1.
Amount (Sales Amount): The sales amount ranges from 0 to 5584 with an average (mean) of 648.6. The median sales amount is 605.
There are missing values (7795 observations) in the 'Amount' column.
ANOVA Test for Sales among Different Categories:
The ANOVA test was conducted to compare sales ('Amount') among different product categories. The results indicate that the 'Category' variable significantly impacts sales amounts (p < 0.001). The 'F' statistic value is high (9715), suggesting a strong evidence of differences in sales amounts among categories.
Linear Regression Analysis:
The linear regression model was fitted to understand the relationship between sales amount ('Amount') and quantity sold ('Qty'), along with different product categories ('Category') as predictors. The coefficients show the estimated impact of each predictor on sales amount compared to a reference category (intercept).
Interpretation of Coefficients: For example, 'Qty' has a positive coefficient of 96.134, indicating that for each unit increase in quantity sold, the sales amount increases by approximately $96.13.
The coefficients for different 'Category' levels represent the estimated impact of each category compared to a reference category on sales amount. For instance, 'CategoryEthnic Dress' has a coefficient of 203.049, suggesting that, on average, sales for 'CategoryEthnic Dress' are higher compared to the reference category.
Overall Interpretation:
The quantity sold ('Qty') has a positive influence on the sales amount ('Amount'), indicating that higher quantities sold result in increased sales revenue.
Different product categories significantly affect sales amounts. Some categories have a more substantial impact on sales compared to others, as indicated by their coefficients in the regression analysis.
It's important to note that these interpretations are based on the analysis conducted. Further exploration, data cleaning, and detailed analysis might be necessary to derive more nuanced insights or confirm these preliminary findings, considering the missing values and potential issues previously encountered in the dataset.
