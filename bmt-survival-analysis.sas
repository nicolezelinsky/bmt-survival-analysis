/* SAS BIOSTATISTICS SAMPLE: SURVIVAL ANALYSIS
Author: Nicole Zelinsky, PhD
Dataset: sashelp.BMT (Bone Marrow Transplant)
Description: Evaluation of disease-free survival across three transplant groups
using Kaplan-Meier estimation and Cox Proportional Hazards.
*/
/* Global Settings*/
ods noproctitle;
ods graphics on;

/* --- SECTION 1: NON-PARAMETRIC ANALYSIS (PROC LIFETEST) --- */
/* Kaplan-Meier Visualization & Log-Rank Test
Objective: Compare survival distributions across groups (ALL, AML-Low, AML-High).
Notes: 'atrisk' adds the number-at-risk table at of graphic,
'cb' adds confidence bands.
*/
proc lifetest data=sashelp.BMT plots=survival(atrisk cb);
	time T * Status(0);
	strata Group;
	title "Kaplan-Meier Survival Estimates: Log-Rank Test for Group Differences";
run;

/* --- SECTION 2: SEMI-PARAMETRIC MODELING (PROC PHREG) --- */
/* Cox Proportional Hazards Model
Objective: Estimate the Hazard Ratio (HR) between groups.
The 'risklimits' option ensures 95% Confidence Intervals are provided for HRs.
*/
proc phreg data=sashelp.BMT;
	class Group(ref="ALL");

	/* Reference group defined as ALL (Acute Lymphoblastic Leukemia)*/
	model T * Status(0)=Group / risklimits;

	/* Restrict output to primary results:
	model information, convergence status, and HR estimates */
	ods select ModelInfo ConvergenceStatus ParameterEstimates;
	title "Cox Proportional Hazards Model: Parameter Recovery and Hazard Ratios";
run;

/* Formatting Cleanup */
ods graphics off;
title;