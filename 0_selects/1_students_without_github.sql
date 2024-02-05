-- Gets all students without a Github username
SELECT students.id, students.name, email, cohort_id 
FROM students
WHERE github IS null
ORDER BY cohort_id; 