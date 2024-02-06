-- Get the total number of assitance_requests for a student
SELECT count(assistance_requests.*) as total_assistances, name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;