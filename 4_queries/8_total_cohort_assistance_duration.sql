SELECT cohorts.name AS cohort, sum(completed_at - started_at) AS total_duration
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;