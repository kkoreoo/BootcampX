-- Get the cohort wit hthe longest average duration of assistance requests
SELECT name, assistance_time
FROM  (
  SELECT cohorts.name as name, avg(completed_at-started_at) AS assistance_time
  FROM cohorts
  JOIN students ON cohorts.id = cohort_id
  JOIN assistance_requests ON students.id = student_id
  GROUP BY cohorts.name
  ORDER BY assistance_time DESC
  ) AS max_salary
LIMIT 1;

