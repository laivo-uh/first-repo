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

## Next Steps
- Perform statistical analysis to test the hypotheses.
- Document results, including p-values and their interpretations.


## Contributors
- **Presenting Student:** Leslie Fernandes
- **Group Members:** Khurram, Lai, Ayesha, Lipi

---
