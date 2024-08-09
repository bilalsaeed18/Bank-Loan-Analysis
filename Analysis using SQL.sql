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

--Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM [dbo].[financial_loan_data]


--MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 12

--PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM [dbo].[financial_loan_data]


--Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM [dbo].[financial_loan_data]

--MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 12

--PMTD Average Interest
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 11



