# 7COM1079-0901-2024 - Team Research and Development Project
## This project aims to formulate a research question on a particular dataset, visualize the research question using R language, and use statistical analysis methods on the data to test the hypothesis.


## Dataset Information

- **Dataset ID:** DS148 (heart.csv)
- **Dataset Name**: the Health care: Heart attack possibility (kaggle.com)
- **Original Dataset Rows:** 303
- **Filtered Dataset Rows:** 99
- **Filtering Details:** Filtering is performed via an R script to include only relevant observations.

<br />
**Dataset link**: https://www.kaggle.com/datasets/nareshbhat/health-care-data-set-on-heart-attack-possibility 
<br />

## Research Question

**Is there a difference in the mean of maximum heart rate between males and females who experience exercise-induced angina?**

## Variables

### Independent Variable
- **Name:** `sex`
- **Description:** Represents the gender of individuals.
  - 1 = Male
  - 0 = Female
- **Datatype:** Nominal

### Dependent Variable
- **Name:** `thalach`
- **Description:** Maximum heart rate achieved during exercise.
- **Datatype:** Interval

## Hypotheses

1. **Null Hypothesis (H₀):** There is no difference in the mean of the maximum heart rate between males and females who experience exercise-induced angina.
2. **Alternative Hypothesis (H₁):** There is a difference in the mean of the maximum heart rate between males and females who experience exercise-induced angina.

### Assumptions and Considerations
- Higher heart rates in males could potentially be attributed to testosterone levels.
- Lower heart rates in females may indicate the protective effects of estrogen on the cardiovascular system.

### Visualization
- **Boxplot:** According to this boxplot, the mean maximum heart rate (thalach) for females appears slightly higher than for males and both genders show similar variability in heart rate. The IQR (interquartile range) for males is larger, suggesting that their maximum heart rates vary more in the middle range. The range (difference between minimum and maximum values) of maximum heart rate is slightly wider for males than for females. There are no noticeable outliers in either group.
![image](https://github.com/user-attachments/assets/331d6b56-0149-4162-92ad-6dde51f56980)

- **Histogram:** In the histogram, the maximum heart rates in the dataset are generally distributed normally. Most individuals achieve heart rates in the range of 130–150 bpm.
 ![image](https://github.com/user-attachments/assets/a9e51600-1215-4840-9ccd-90944b9f310e)

- **p-value=** `0.01832` : we reject the null hypothesis (𝐻0). This indicates there is strong evidence that the mean maximum heart rates (thalach) are different between males and females. Moreover, the 95% confidence interval suggests that the difference in means is between 2.07 and 21.82, with females (group 0) having a higher mean heart rate 146.5) compared to males (134.56).

## Result

1. **Levene’s Test for Homogeneity of Variance:**
- p-value =  **0.08909** (> 0.05): The test indicates that the variances between the two groups (males and females) are not significantly different.
- Conclusion: The assumption of equal variances is valid, and the standard t-test can be used.
 
2. **Standard t-Test:**
- p-value = **0.01832** (< 0.05): Indicates a statistically significant difference in mean maximum heart rate between males and females.
- **Mean Maximum Heart Rates:**
  - Females (sex = 0): Mean = **134.6**.
  - Males (sex = 1): Mean = **146.5**.
- Conclusion: The difference in means is statistically significant under the equal variances assumption. The 95% confidence interval (2.07 to 21.82) suggests that males have, on average, a higher maximum heart rate compared to females. These findings underscore gender-based physiological differences that could influence cardiovascular health assessments and interventions.


## Final Interpretation:

Levene’s test confirms equal variances, allowing the use of the standard t-test. The t-test results (p = **0.01832**) indicate a significant difference in maximum heart rate between males and females who experience exercise-induced angina. Males have a higher mean maximum heart rate compared to females, supporting the hypothesis that gender-based physiological differences influence heart rate during stress.


---
