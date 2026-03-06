# Loan Default Risk Analysis

## Project Overview

This project analyzes loan applicant data to understand the factors that
influence loan default risk. The goal is to explore patterns in
financial variables and determine which customers are more likely to
default on a loan.

The analysis focuses on how credit score, income, existing loans, and
debt-to-income ratio impact loan repayment behavior.

------------------------------------------------------------------------

## Dataset

-   Total Records: \~500 customers

### Key Columns

-   Credit_Score
-   Income
-   Loan_Amount
-   Existing_Loans
-   Debt_to_Income
-   Default_Flag

Each row represents a loan applicant and their financial information.

------------------------------------------------------------------------

## Tools Used

-   Python
-   Pandas
-   Basic Data Analysis

------------------------------------------------------------------------

## Analysis Steps

### 1. Loan Distribution

Examined how many loans customers already have.

Example: pd.crosstab(df\["Existing_Loans"\],
pd.qcut(df\["Credit_Score"\], 3))

Insight: Customers with more existing loans tend to show higher risk
patterns.

------------------------------------------------------------------------

### 2. Credit Score Segmentation

Credit scores were divided into groups using quantiles to understand how
risk changes across score ranges.

Lower credit scores generally indicate higher default risk.

------------------------------------------------------------------------

### 3. Correlation Analysis

Correlation between Debt_to_Income and Default_Flag:

Result: 0.16

Interpretation: Debt-to-income ratio alone is not a strong predictor of
default. Multiple financial indicators should be analyzed together.

------------------------------------------------------------------------

## Risk Evaluation Logic

Before approving a loan, banks should consider:

-   Credit Score
-   Income
-   Loan Amount
-   Existing Loans
-   Debt-to-Income Ratio
-   Previous repayment behavior

Loan approval decisions should not rely on a single variable.

------------------------------------------------------------------------

## Example Insight

If two customers apply:

Customer 1: Higher disposable income after expenses.

Customer 2: Lower disposable income.

Customer 2 is likely a higher repayment risk.

------------------------------------------------------------------------

## Key Takeaways

-   Loan default prediction requires multi-factor analysis.
-   Credit score alone is not sufficient.
-   Debt-to-income ratio has limited predictive power by itself.
-   Financial context is important when approving loans.

------------------------------------------------------------------------

## Project Status

Completed as a practice project for learning data analysis.

------------------------------------------------------------------------

## Author

Abhay Panchal Aspiring Data Analyst
