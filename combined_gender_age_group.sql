--combined gender and age group query
-- This query combines the gender and age group distribution of patients.


SELECT 
  gender,
  CASE
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 0 AND 9 THEN '0-9'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 10 AND 19 THEN '10-19'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 20 AND 29 THEN '20-29'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 30 AND 39 THEN '30-39'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 40 AND 49 THEN '40-49'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 50 AND 59 THEN '50-59'
    WHEN EXTRACT(YEAR FROM AGE(date_of_birth)) BETWEEN 60 AND 69 THEN '60-69'
    ELSE '70+'
  END AS age_group,
  count(*) AS total
FROM patients
GROUP BY gender, age_group
ORDER BY gender, age_group;
