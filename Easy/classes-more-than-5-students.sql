SELECT DISTINCT
    class
FROM
    (SELECT 
        class,
        COUNT(student) AS num_students
    FROM
        Courses
    GROUP BY class
    HAVING num_students >= 5) AS StudentCounts;