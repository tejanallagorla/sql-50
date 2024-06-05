SELECT 
    start.machine_id,
    ROUND(AVG(stop.timestamp - start.timestamp), 3) AS processing_time
FROM
    Activity start
        JOIN
    Activity stop ON start.machine_id = stop.machine_id AND start.process_id = stop.process_id AND start.activity_type = 'start' AND stop.activity_type = 'end'
GROUP BY start.machine_id;