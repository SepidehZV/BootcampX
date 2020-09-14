SELECT cohorts.name AS cohort_name, count(students.*) AS students_counts
FROM cohorts JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);