/*
Question 1.	How many rows are in the data_analyst_jobs table?

SELECT COUNT(*)
FROM data_analyst_job;

Answer 1. 	1793

Question 2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT *
FROM data_analyst_job
LIMIT 10

Answer 2. ExxonMobil

Question 3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
*/
SELECT COUNT(*)
FROM data_analyst_job
WHERE location = 'TN' OR location = 'KY';

Answer TN= 21, KY = 6