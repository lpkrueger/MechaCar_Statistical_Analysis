# MechaCar_Statistical_Analysis
Module 16, R and Statistics - UNCCH Data Analytics Bootcamp, Spring 2023

## Project Overview

### Purpose
In this exercise, I am helping Jeremy and the data analytics team with AutosRUs to garner insidghts from production data to help the manufacturing team relieve production troubles and restore progress on the MechaCar project. 


## Method
We will be using R to perform retrospective analysis of historical data to create summary statistics, determine predictive variables, and understand performance differences with other manufacturers. The source data was retrieved from .CSV files. 

From the Module 16 Challenge: 
    ```
        'Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

        Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

        Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

        Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.'
    ```

## Linear Regression to Predict MPG

Statistical metrics from the multiple linear regression model were produced using the following code sample: 
```
    lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)
```
- Output from Linear Regression
    ![linear_regression](/linear_regression.png)

According to the results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random variance to the linear model, due to their very small P-values. In other words, vehicle length and ground clearance have a significant impact on mpg. 

The p-value "Pr(>|t|)" of the linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis and assume the slope of the linear model is NOT zero.

The Multiple R-squared value of the linear model is .715, which means that the model predicts mpg of MechaCar prototypes with just over 70% accuracy. To get a more acurate model it may be necesssary to determine other more significant factors that contribute to mpg. 


## Summary Statistics on Suspension Coils

In your README, create a subheading ## Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

    The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils

In your README, create a subheading ## T-Tests on Suspension Coils, then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.


## Study Design: MechaCar vs Competition

Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Follow the instructions below to complete Part 4.

    In your README, create a subheading ## Study Design: MechaCar vs Competition.

    Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

    In your description, address the following questions:

        What metric or metrics are you going to test?

        What is the null hypothesis or alternative hypothesis?

        What statistical test would you use to test the hypothesis? And why?

        What data is needed to run the statistical test?

