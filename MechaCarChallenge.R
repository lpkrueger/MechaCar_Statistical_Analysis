# Module 16 Challenge: MechaCarChallenge.R

## Part 1

# Part 1.3 Use the library() function to load the dplyr package
library(dplyr)

# Part 1.4 Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 
head(mpg_table)

# Part 1.5 Perform linear regression using the lm() function
# In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)

# Part 1.6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))

## Part 2

# Part 2.2 Import and read in the Suspension_Coil.csv file as a table
coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 
head(coil_table)

# Part 2.3 Create a total_summary dataframe using the summarize() function to get the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column
total_summary <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI))

# Part 2.4 Create a lo_summary dataframe using the groupby() and the summarize() functions to group 
# each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

## Part 3

# Part 3.1 Write an RScript using the t.test() function to determine if the PSI across all manufacturing 
# lots is statistically different from the population mean of 1,500 pounds per square inch
boxplot(coil_table$PSI)
t.test(coil_table$PSI,mu=1500)
  # t.test(log10(coil_table$PSI),mu=(log10(1500))) # determined didn't need log10

# Part 3.2 write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() 
# argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(coil_table, Manufacturing_Lot == "Lot1")$PSI,mu=1500)
t.test(subset(coil_table, Manufacturing_Lot == "Lot2")$PSI,mu=1500)
t.test(subset(coil_table, Manufacturing_Lot == "Lot3")$PSI,mu=1500)
