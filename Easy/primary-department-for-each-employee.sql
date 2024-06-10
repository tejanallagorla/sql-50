SELECT 
    employee_id,
    department_id
FROM
    Employee
WHERE
    primary_flag = 'Y'
UNION
SELECT 
	employee_id,
    department_id
FROM
	(SELECT 
		employee_id,
		department_id,
		COUNT(department_id) AS dep_count
	FROM
		Employee
	GROUP BY employee_id
	HAVING dep_count = 1) AS DepCounts;