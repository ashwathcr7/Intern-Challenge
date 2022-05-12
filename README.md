# Data Science Intern-Challenge

Given some sample data, write a program to answer the following: (link to data set here https://docs.google.com/spreadsheets/d/16i38oonuX1y1g7C_UAmiK9GkY7cS-64DfiDMNiR41LM/edit#gid=0)

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.
What metric would you report for this dataset?
What is its value?

Answers :

1a) Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.

From this, we can see that the amount 3145.13 was obtained by taking the average of the order amount column. This amount is large probably because it is the mean,      and it is influenced by outliers large and small. We also note that the standard deviation is 41282.54, which is incredibly large, so the values in the data set        are further away from the mean. Thus we can see that the mean is not a very good estimate of the AOV.

We can also look at the other statistics provided. At the 3rd quartile, 75% of the data points fall under 390. This is much smaller than the AOV of 3145.13. On the    other hand, the max value is 704000, which is way larger than the 3rd quartile. So it seems we do indeed have some outliers conrtibuting to the large AOV of 3145.13    that was calculated naively.

A better way to evaluate the data would be to use the median as the AOV. Since it is the middle value of the sorted values, it is a central value but large and         small outliers do not skew the median as much as the mean.


1b) What metric would you report for this dataset?

The median for order amount is the value I would report for this dataset.

1c) What is its value?

Its value is $284.0

View code here : https://github.com/ashwathcr7/Intern-Challenge/blob/main/Intern.py



Question 2:
For this question you’ll need to use SQL. Follow this link to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

A. How many orders were shipped by Speedy Express in total?
54 orders were shipped by Speedy Express.

B. What is the last name of the employee with the most orders?
Peacock with 40 orders.

C. What product was ordered the most by customers in Germany?
Boston Crab Meat was ordered the most in Germany with a total order quantity of 160.

View code here : https://github.com/ashwathcr7/Intern-Challenge/blob/main/Data%20Intern%20Challenge.sql
