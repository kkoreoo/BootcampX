-- Get currently enrolled students' average assignemnt completion time
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS null 
GROUP BY student
ORDER BY average_assignment_duration DESC;