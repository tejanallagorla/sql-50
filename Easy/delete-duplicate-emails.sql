DELETE b FROM
	Person a
        JOIN
    Person b ON a.email = b.email 
WHERE
    b.id > a.id;