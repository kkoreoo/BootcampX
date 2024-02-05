-- Get all graduates without a linked github account
SELECT name, email, phone
FROM students
WHERE end_date IS NOT null
AND github IS null;