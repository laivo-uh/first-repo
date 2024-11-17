library(readxl)

heart_data <- read_excel("D:/team-research-project/heart.xls")
head(heart_data)

list.files("D:/team-research-project/heart.xls")

filtered_data <- subset(heart_data, exang == 1)
head(filtered_data)

boxplot(
  thalach ~ sex,
  data = filtered_data,
  main = "Boxplot of Maximum Heart Rate by Gender",
  xlab = "Gender (1 = Male, 0 = Female)",
  ylab = "Maximum Heart Rate (thalach)",
  col = c("lightblue", "pink"),
  names = c("Male", "Female")
)

attach(filtered_data)
hist(
  thalach,
  breaks = 10,
  probability = TRUE,
  main = "Histogram of Maximum Heart Rate with Normal Curve",
  xlab = "Maximum Heart Rate (thalach)",
  col = "cornsilk2",
  border = "cornsilk4"
  )

curve(
  dnorm(x, mean = mean(thalach), sd = sd(thalach)),
  col = "darkgrey",
  lwd = 2,
  add = TRUE
  )

detach(filtered_data)