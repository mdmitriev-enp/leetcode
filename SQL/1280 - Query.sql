SELECT
	s.student_id,
	s.student_name,
	S.subject_name,
	COUNT(examinations.subject_name) AS attended_exams
FROM
	(SELECT * FROM students, subjects) AS S
	LEFT JOIN examinations ON s.student_id = examinations.student_id AND s.subject_name = examinations.subject_name
GROUP BY
	s.student_id,
	s.student_name,
	S.subject_name
ORDER BY
	s.student_id,
	S.subject_name