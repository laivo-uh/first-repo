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

### Visualization
- **Boxplot:**
  ![image](https://github.com/user-attachments/assets/bc67303d-a160-4e09-9dc8-dcb515937256)
  According to this boxplot, the median maximum heart rate (thalach) for females appears slightly higher than for males and both genders show similar variability in heart rate.
- **Histogram:**
  ![image](https://github.com/user-attachments/assets/a9e51600-1215-4840-9ccd-90944b9f310e)
  In the histogram, the maximum heart rates in the dataset are generally distributed normally. Most individuals achieve heart rates in the range of 130–150 bpm.
- **p-value=** `0.01832` : we reject the null hypothesis (𝐻0). This indicates there is strong evidence that the mean maximum heart rates (thalach) are different between males and females. Moreover, the 95% confidence interval suggests that the difference in means is between 2.07 and 21.82, with females (group 0) having a higher mean heart rate 146.5) compared to males (134.56).

## Contributors
- **Presenting Student:** Leslie Fernandes
- **Group Members:** Khurram, Lai, Ayesha, Lipi

---
