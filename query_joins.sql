select * from train_schedules;
select * from trains;
select * from schedule_days;
select * from schedule_stations;
select * from stations;

select curdate();

select * from trains 
inner join train_schedules  on trains.id=train_schedules.train_id 
inner join schedule_days on train_schedules.id=schedule_days.schedule_id 
inner join schedule_stations on train_schedules.schedule_id=schedule_stations.id
inner join stations on schedule_stations.station_id=stations.id;