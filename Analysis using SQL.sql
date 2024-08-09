CREATE Database Bank_Loan_Analysis;

select * from [dbo].[financial_loan_data]


--Total Loan Applications

SELECT COUNT(id) AS Total_Applications FROM [dbo].[financial_loan_data]

--MTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 12


--PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 11


--Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM [dbo].[financial_loan_data]

--MTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 12

--PMTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 11

