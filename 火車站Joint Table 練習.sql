/*全省各站點2022年進站總人數*/
SELECT EXTRACT(YEAR FROM yearmonthday) as Years, Station_Name,sum(passenger_in_count) as Incoming_Counts
From gate_count left join stations on stations.station_id = gate_count.station_id
where (yearmonthday between '2022-01-01'and'2022-12-31')
GROUP BY EXTRACT(YEAR FROM yearmonthday),Station_Name
ORDER BY Incoming_Counts DESC;

/*全省各站點2022年進站總人數大於5佰萬人的站點*/
SELECT EXTRACT(YEAR FROM yearmonthday) as Years, Station_Name,sum(passenger_in_count) as Incoming_Counts
From gate_count left join stations on stations.station_id = gate_count.station_id
where (yearmonthday between '2022-01-01'and'2022-12-31')
GROUP BY EXTRACT(YEAR FROM yearmonthday),Station_Name
HAVING sum(passenger_in_count)>=5000000
ORDER BY Incoming_Counts DESC;

/*基隆火車站2020年,每月份進站人數*/
SELECT Station_name, Extract(Year from yearmonthday),EXTRACT(Month from yearmonthday) as Months, sum(passenger_in_count)as Passengers_Count
FROM gate_count Left Join Stations on stations.station_id = gate_count.station_id
WHERE station_name = '基隆' and EXTRACT(YEAR FROM yearmonthday)=2020
GROUP BY Station_Name, EXTRACT(YEAR FROM yearmonthday),EXTRACT(month FROM yearmonthday)
Order By Months ASC

/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT Station_name, Extract(Year from yearmonthday),EXTRACT(Month from yearmonthday) as Months, sum(passenger_in_count)as Passengers_Count
FROM gate_count Left Join Stations on stations.station_id = gate_count.station_id
WHERE station_name = '基隆' and EXTRACT(YEAR FROM yearmonthday)=2020
GROUP BY Station_Name, EXTRACT(YEAR FROM yearmonthday),EXTRACT(month FROM yearmonthday)
Order By Passengers_Count DESC

/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT Station_Name, EXTRACT(YEAR FROM yearmonthday) as Years, sum(passenger_in_count) Incoming_Count
FROM gate_count Left Join Stations on stations.station_id = gate_count.station_id
where station_name = '基隆'
GROUP BY Station_name,EXTRACT(YEAR FROM yearmonthday)
ORDER BY Years DESC

/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT Station_Name, EXTRACT(YEAR FROM yearmonthday) as Years,sum(passenger_in_count) as Incoming_Count
FROM gate_count Left Join Stations on stations.station_id = gate_count.station_id
WHERE Station_name ='基隆' OR station_name = '臺北'
GROUP BY Station_name, EXTRACT(YEAR FROM yearmonthday)
ORDER BY Years ASC