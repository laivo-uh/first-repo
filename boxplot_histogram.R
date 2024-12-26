install.packages("car")
install.packages("car", repos = "https://cran.rstudio.com/")
library(readxl)
library(car)

options(repos = c(CRAN = "https://cran.rstudio.com"))

heart_data <- read_excel("heart.xls")

#Cleaning of Dataset

#Shows the number of missing values in each column
colSums(is.na(heart_data)) 

#removing missing values
heart_data <- na.omit(heart_data)

#Filling missing values with a default or mean
heart_data$thalach[is.na(heart_data$thalach)] <- mean(heart_data$thalach, na.rm = TRUE)

#Checking for duplicates
duplicates <- duplicated(heart_data)
print(duplicates)

# Checking the structure of the dataset
str(heart_data)  

# Ensuring numeric type
heart_data$age <- as.numeric(heart_data$age)  

#Saving the Cleaned data set
write.csv(heart_data, "cleaned_heart_data.csv", row.names = FALSE)

# Filter data for exercise-induced angina
filtered_data <- subset(heart_data, exang == 1)

# Box plot for Maximum Heart Rate by Gender
boxplot(
  thalach ~ sex,
  data = filtered_data,
  main = "Boxplot of Maximum Heart Rate by Gender",
  xlab = "Gender (1 = Male, 0 = Female)",
  ylab = "Maximum Heart Rate (thalach)",
  col = c("pink", "lightblue"),
  names = c("Female", "Male")
)

attach(filtered_data)

# Histogram with Normal Curve for Maximum Heart Rate
hist(
  thalach,
  breaks = 10,
  probability = FALSE, # Hiển thị frequency
  main = "Histogram of Maximum Heart Rate with Normal Curve",
  xlab = "Maximum Heart Rate (thalach)",
  col = "cornsilk2",
  border = "cornsilk4"
)

curve(
  dnorm(x, mean = mean(thalach), sd = sd(thalach)) * length(thalach) * diff(hist(thalach, breaks = 10, plot = FALSE)$breaks)[1],
  col = "darkgrey",
  lwd = 2,
  add = TRUE
)

detach(filtered_data)

# Shapiro-Wilk test for normality (female) 
shapiro_test_females <- shapiro.test(filtered_data$thalach[filtered_data$sex == 0])

# Shapiro-Wilk test for normality (male)
shapiro_test_males <- shapiro.test(filtered_data$thalach[filtered_data$sex == 1])

# Print results of Shapiro-Wilk test and Log the results
sink("Rscript.log", append=TRUE)

# Result: p < 0.05 (indicating non-normal distribution)
# Result: p > 0.05 (indicating normal distribution)
print(shapiro_test_females)
print(shapiro_test_males)
sink()

str(filtered_data)

filtered_data$sex <- as.factor(filtered_data$sex)

# Perform Levene's Test for equality of variances
# Result: p < 0.05 (indicating significant difference in variances)
levene_result <- leveneTest(thalach ~ sex, data = filtered_data)

# Log the Levene's test result
sink("Rscript.log", append=TRUE)
print(levene_result)
sink()

# Perform t-test for difference in means between males and females
# Result: p < 0.05 (indicating significant difference in means)
t_test_result <- t.test(thalach ~ sex, data = filtered_data, var.equal = TRUE)

# Log the t-test result
sink("Rscript.log", append=TRUE)
print(t_test_result)
sink()



