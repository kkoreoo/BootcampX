const { Pool } = require('pg');

const pool = new Pool ({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx',
});

const cohortName = process.argv[2] || 'JUL02';
const values = [cohortName];
const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
ORDER BY teacher;`

pool.query(queryString, values)
.then((response) => {
  response.rows.forEach((teacher) => {
    console.log(`${teacher.cohort}: ${teacher.teacher}`);
  })
})
.catch((error) => {
  console.log('error received:', error);
})