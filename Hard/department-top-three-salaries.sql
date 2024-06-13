SELECT 
    d.name AS Department,
    e1.name AS Employee,
    e1.salary AS Salary
FROM
    Employee e1
        JOIN
    Department d ON e1.departmentId = d.id
WHERE
    (SELECT 
		COUNT(DISTINCT e2.salary)
	FROM
		Employee e2
	WHERE
		e2.salary > e1.salary AND e2.departmentId = e1.departmentId) < 3;