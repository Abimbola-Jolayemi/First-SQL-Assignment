SELECT courseId, StudentId, score
FROM grade
WHERE score = (SELECT MIN(score) from grade)