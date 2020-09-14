SELECT students.name AS student,
  avg(assignment_submissions.duration) AS average_assignment_duration,
  avg(assignments.duration) AS average_estimated_duration
FROM assignment_submissions JOIN students ON student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg(assignment_submissions.duration) ASC;