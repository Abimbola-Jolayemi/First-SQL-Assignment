SELECT courseId, StudentId, score
FROM grade
WHERE score = (SELECT MAX(score) from grade)