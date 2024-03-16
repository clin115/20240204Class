/*Join 資料表*/
SELECT * FROM gate_count LEFT JOIN stations 
ON gate_count.station_id = stations.station_id

/*找進站人數最多的*/
SELECT max(passenger_in_count) FROM gate_count

/*中途範例*/
SELECT * FROM gate_count LEFT JOIN stations 
ON gate_count.station_id = stations.station_id
WHERE passenger_in_count = 82586

/*Sub Query SQL不能儲存變數，因此用SUB QUERY*/
SELECT * FROM gate_count LEFT JOIN stations 
ON gate_count.station_id = stations.station_id
WHERE passenger_in_count = (
	SELECT max(passenger_in_count) FROM gate_count 
)


/*找出station_id的Unique值*/
SELECT station_id FROM gate_count
GROUP BY station_id

/*各站點進站人數最多的*/
SELECT * FROM gate_count LEFT JOIN stations 
ON gate_count.station_id = stations.station_id
WHERE (gate_count.station_id,passenger_in_count) IN(
	SELECT station_id, max(passenger_in_count) FROM gate_count
GROUP BY station_id
)
	










