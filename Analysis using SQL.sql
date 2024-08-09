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


--Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM [dbo].[financial_loan_data]

--MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 12

--PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM [dbo].[financial_loan_data]
WHERE MONTH(issue_date) = 11


-------------GOOD LOAN ISSUED-------------------------
--Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM [dbo].[financial_loan_data]

--Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

--Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


--Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


----------BAD LOAN ISSUED---------------
--Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM [dbo].[financial_loan_data]

--Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Charged Off'

--Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Charged Off'

--Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM [dbo].[financial_loan_data]
WHERE loan_status = 'Charged Off'

