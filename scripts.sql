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

SELECT COUNT(*)
FROM data_analyst_job
WHERE location = 'TN' OR location = 'KY';

Answer 3 TN= 21, KY = 6

Question 4 How many postings in Tennessee have a star rating above 4?

SELECT COUNT(*)
FROM data_analyst_job
WHERE location = 'TN' AND star_rating > 4;

Answer 4  	3

Question 5 How many postings in the dataset have a review count between 500 and 1000?

SELECT COUNT(*)
FROM data_analyst_job
WHERE review_count BETWEEN 500 AND 1000

Answer 5	151

Question 6	Show the average star rating for each state. 
			The output should show the state as state and the average rating for the state as avg_rating.
			Which state shows the highest average rating?

SELECT avg(star_rating) AS avg_rating, location AS state
FROM data_analyst_job
GROUP BY location
ORDER BY avg_rating DESC;

Answer 6	NE

Question 7	Select unique job titles from the data_analyst_jobs table. How many are there?

SELECT COUNT(DISTINCT title)
FROM data_analyst_job;

Answer 7	881

Question 8	How many unique job titles are there for California companies?

SELECT COUNT(DISTINCT title)
FROM data_analyst_job
WHERE location = 'CA';

Answer 8	230

Question 9	Find the name of each company and its average star rating for all 
			companies that have more than 5000 reviews across all locations. 
			How many companies are there with more that 5000 reviews across all locations?

SELECT DISTINCT (company) AS unique_company, avg(star_rating) AS avg_star_rating
FROM data_analyst_job
WHERE review_count > 5000
GROUP BY company;

Answer 9	41


Question 10	Add the code to order the query in #9 from highest to lowest average star rating. 
			Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? 
			What is that rating?

SELECT DISTINCT (company) AS unique_company, avg(star_rating) AS avg_star_rating
FROM data_analyst_job
WHERE review_count > 5000
GROUP BY unique_company
ORDER BY avg_star_rating DESC;

Answer 10	American Express,  4.199...809

Question 11	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

SELECT COUNT(*)
FROM data_analyst_job
WHERE title LIKE '%Analyst%';

Answer 11	1636

Question 12	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? 
			What word do these positions have in common?
*/
SELECT DISTINCT (title)
FROM data_analyst_job
WHERE title NOT LIKE '%ANALYST%'
OR title NOT LIKE '%Analyst%'
OR title NOT LIKE '%analyst%'
OR title NOT LIKE '%Analytics%'
OR title NOT LIKE '%analytics%'
OR title NOT LIKE '%ANALYTICS%';
