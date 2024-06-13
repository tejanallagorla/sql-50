SELECT 
    id,
    SUM(counts) AS num
FROM
    ((SELECT 
        requester_id AS id,
        COUNT(requester_id) AS counts
    FROM
        RequestAccepted
    GROUP BY requester_id)
    UNION ALL
    (SELECT 
        accepter_id AS id,
        COUNT(accepter_id) AS counts
    FROM
        RequestAccepted
    GROUP BY accepter_id)) AS FriendCounts
GROUP BY id
ORDER BY num DESC
LIMIT 1;