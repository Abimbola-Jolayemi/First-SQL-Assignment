SELECT courseId, title, Facilitator, NoOfStudents
FROM course
WHERE NoOfStudents = (SELECT MAX(NoOfStudents) from course);