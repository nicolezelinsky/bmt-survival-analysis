# Survival Analysis of Bone Marrow Transplant Outcomes
**Comparison of ALL, AML-Low, and AML-High Risk Groups**

## Study Objective
Analysis of the `sashelp.BMT` dataset to evaluate disease-free survival times across three diagnostic strata. This project utilizes non-parametric and semi-parametric methods to quantify risk factors for relapse.

## Statistical Methodology
* **Kaplan-Meier Estimation:** Used to estimate $S(t)$ and visualize survival probability over time.
* **Inference:** Group survival distributions compared via Log-Rank and Wilcoxon tests ($\alpha = 0.05$).
* **Modeling:** Cox Proportional Hazards regression used to estimate Hazard Ratios (HR) for diagnostic groups.

## Results & Interpretation

### 1. Global Tests
The **Log-Rank**, **Wilcoxon**, and **-2log(LR)** tests were all significant ($p < 0.05$), indicating distinct survival profiles across the three strata.

### 2. Cox Model Estimates (Ref: ALL)

| Comparison | Hazard Ratio (HR) | 95% Confidence Interval | Result |
| :--- | :--- | :--- | :--- |
| **AML-Low Risk vs. ALL** | **0.563** | **[0.321, 0.989]** | **Significant** |
| **AML-High Risk vs. ALL** | **1.466** | **[0.868, 2.476]** | **Non-Significant** |

* **AML-Low Risk:** Compared to the ALL group, patients in the AML-Low Risk group had a ~44% lower risk of relapse. The 95% CI [0.321, 0.989] suggests the true HR likely falls between a ~68% and ~1% reduction in risk.
* **AML-High Risk:** The difference between AML-High Risk and ALL did not reach statistical significance ($p > 0.05$) and cannot be distinguished from statistical noise in this sample.

## Visualizations
![Kaplan-Meier Survival Curve](km_plot.png)


## Analysis Details
* **Software:** SAS 9.4 (PROC LIFETEST, PROC PHREG)
* **Parameters:** Number-at-risk tables, Hall-Wellner confidence bands.
* **Model Validation:** The proportional hazards assumption was assessed via visual inspection of the survival functions; non-informative censoring is assumed.