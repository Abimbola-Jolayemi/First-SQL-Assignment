SELECT courseId, title, Facilitator, NoOfStudents
FROM course
WHERE NoOfStudents = (SELECT MIN(NoOfStudents) from course);