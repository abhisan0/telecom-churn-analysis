Telecom Customer Churn Analysis & Prediction

Project Overview
Analyzed customer churn behavior for an Iranian telecom company using a dataset of 2,850 customers. The goal was to identify key factors driving churn and build a predictive model to help the business retain at-risk customers.

Tools & Technologies

Python (Google Colab) — Data cleaning, EDA, Machine Learning
SQL (SQLite / DB Browser) — Data querying and aggregation
Power BI — Interactive dashboard and data visualization
Libraries — Pandas, Matplotlib, Seaborn, Scikit-learn


Dataset

Source: Iranian Telecom Customer Churn Dataset (Kaggle)
Size: 2,850 rows × 14 columns
Features: Customer demographics, usage behavior, complaints, subscription details, customer value, churn status


What I Did
1. SQL Analysis

Queried total customers, churn distribution, average customer value
Analyzed churn by tariff plan and subscription length
Identified high-value customer segments

2. Python — Data Cleaning & EDA

Checked and handled null values and duplicates
Cleaned and standardized column names
Created visualizations: Churn Distribution, Age vs Churn, Subscription Length vs Churn, Customer Value vs Churn, Call Failure vs Churn, Correlation Heatmap

3. Machine Learning

Built Logistic Regression and Random Forest models
Achieved ~89% accuracy
Identified class imbalance as a key challenge for churn recall

4. Power BI Dashboard

Built a single-page interactive dashboard with:

4 KPI cards (Total Customers, Churn Rate, Active, Churned)
Churn distribution donut chart
Churn by tariff plan bar chart
Complaints vs Churn analysis
Customer value scatter plot
Subscription length bins chart
Frequency & seconds of use vs churn
4 interactive tile slicers



Key Insights

15.65% of customers churned
Customers with complaints had significantly higher churn rate (~82% churn among complainers)
Lower customer value customers churned more frequently
Newer subscribers (0–12 months) showed higher churn tendency
Low usage customers were more likely to churn
Call failures showed limited direct influence on churn


Business Recommendations

Improve customer support to resolve complaints faster
Create retention programs targeting low-engagement customers
Offer loyalty incentives for customers in their first 12 months
Monitor customers with declining usage patterns early


Model Performance

ModelAccuracyLogistic Regression~89%Random Forest~89%

Note: Due to class imbalance (85% active vs 15% churned), recall for the churn class is moderate. Future improvement: apply SMOTE or class weighting.