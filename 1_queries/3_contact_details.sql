-- List of students that do not have a phone number or email
SELECT name, id, cohort_id 
FROM students
WHERE phone IS null OR email is NULL
ORDER BY id;