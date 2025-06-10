use credit_card;
Q1: Group the customers based on their income type and find the average of their annual income.
SELECT * FROM credit_data
SELECT Type_Income,COUNT(*),AVG(Annual_income) FROM credit_data group by Type_Income;

Q2: Find the female owners of cars and property
SELECT * FROM credit_data where Car_Owner='Y' and GENDER='F';
SELECT * FROM credit_data where Propert_Owner='Y' and GENDER='F';
SELECT * FROM credit_data where Propert_Owner='Y' and GENDER='F' and Car_Owner='Y';

Q3: Find the male customers who are staying with their families.
SELECT * FROM credit_data where Family_Members>1 and GENDER='M';

Q4: Please list the top five people having the highest income.
SELECT * FROM credit_data order by Annual_income DESC LIMIT 5;

Q5: How many married people are having bad credit?
SELECT count(*) FROM credit_data where Marital_status='Married' and label=1;

Q6: What is the highest education level and what is the total count?
SELECT EDUCATION,COUNT(*) FROM credit_data group by EDUCATION;

Q7: Between married males and females, who is having more bad credit?
SELECT count(*) FROM credit_data where Marital_status='Married' and GENDER='M' and label=1;
SELECT count(*) FROM credit_data where Marital_status='Married' and GENDER='F' and label=1;
