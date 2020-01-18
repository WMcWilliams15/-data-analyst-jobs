SELECT DISTINCT (title)
FROM data_analyst_job
WHERE title <> LIKE '%ANALYST%'
OR title <> LIKE '%Analyst%'
OR title <> LIKE '%analyst%'
OR title <> LIKE '%Analytics%'
OR title <> LIKE '%analytics%'
OR title <> LIKE '%ANALYTICS%';

