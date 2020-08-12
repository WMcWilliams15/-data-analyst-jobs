/*

Q1:	How many rows are in the data_analyst_jobs table?


select count(*)
from data_analyst_job

A:	1793

---------------------------------------------------------------------------------

Q2:	Write a query to look at just the first 10 rows. 
	What company is associated with the job posting on the 10th row?


select *
from data_analyst_job
limit 10

A: 	ExxonMobil

--------------------------------------------------------------------------------------

Q3:	How many postings are in Tennessee? 
	How many are there in either Tennessee or Kentucky?


select count(*)
from data_analyst_job
where location = 'TN'

select count(*)
from data_analyst_job
where location = 'TN' or location = 'KY'

A: 	21
A:	27

select location
FROM data_analyst_job
WHERE location = 'TN'
-------------------------------------------------------------------------------------------

Q4:	How many postings in Tennessee have a star rating above 4?


select count(*)
from data_analyst_job
where location = 'TN' 
and star_rating > 4;

A:	3

----------------------------------------------------------------------------------------------

Q5:	How many postings in the dataset have a review count between 500 and 1000?


select count(*)
from data_analyst_job
where review_count between 500 and 1000;

A: 	151

------------------------------------------------------------------------------------------------

Q6:	Show the average star rating for each state. 
	The output should show the state as state and the average rating for the state as avg_rating. 
	Which state shows the highest average rating?


select location as state, avg(star_rating) as avg_rating
from data_analyst_job
where location is not null and star_rating is not null
group by location
order by avg_rating desc
limit 1;

A:	NE 	4.19999980900000

--------------------------------------------------------------------------------------------------------

Q7:	Select unique job titles from the data_analyst_jobs table. 
	How many are there?


select count(distinct(title))
from data_analyst_job 

A:	881

-----------------------------------------------------------------------------------------------

Q8:	How many unique job titles are there for California companies?


select count(distinct(title))
from data_analyst_job 
where location = 'CA';

A:	230

---------------------------------------------------------------------------------

Q9:	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. 
	How many companies are there with more that 5000 reviews across all locations?


select count(*)
from 	(	select 	company,
					avg(star_rating)
			from data_analyst_job
			where review_count > 5000 
			and company is not null
			group by company
		) as sub_query_1

A:	40

-----------------------------------------------------------------------------------------------------

Q10:	Add the code to order the query in #9 from highest to lowest average star rating. 
	Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? 
	What is that rating?


select 	company,
		round(avg(star_rating), 7),
		location
from data_analyst_job
where review_count > 5000 
and company is not null
group by company, location
order by avg(star_rating) desc

A:	"Kaiser Permanente"	4.20	"OR"
	"General Motors"	4.20	"MI"
	"American Express"	4.20	"UT"
	"Microsoft"			4.20	"WA"
	"American Express"	4.20	"NY"
	"American Express"	4.20	"AZ"
	"Kaiser Permanente"	4.20	"CA"
	"Unilever"			4.20	"NJ"
	"Nike"				4.20	"OR"

--------------------------------------------------------------------------------------------------------

Q11:	Find all the job titles that contain the word ‘Analyst’. 
		How many different job titles are there?


select count(*)
from data_analyst_job
where title ilike '%Analyst%';

A:	1669

-----------------------------------------------------------------------------------------------------------

Q12: 	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’?
		What word do these positions have in common?
	
	
select title
from data_analyst_job
where title not ilike '%Analyst%' and title not ilike '%analytics%';

A: 	4
A:	Data Visualization
*/