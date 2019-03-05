# ALL THE DATA HAS BEEN IMPORTED USING DATA IMPORT WIZARD INTO A SOURCE TABLE FOR ALL THE 6 STOCKS

# CREATION OF BAJAJ1 TABLE FROM A SOURCE TABLE BAJAJ AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY

select *
from bajaj;

alter table bajaj 
add newdate varchar(50);

update bajaj 
set newdate=str_to_date(date,"%d-%M-%Y");

alter table bajaj drop column Date;

alter table bajaj rename column newdate to Date;

create table bajaj1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `bajaj`
group by `Date`
order by 1;

update `bajaj1`
set `20 Day MA` = null
limit 19;

update `bajaj1`
set `50 Day MA` = null
limit 49;


alter table bajaj1
modify `20 Day MA` float(10,2);

alter table bajaj1
modify `50 Day MA` float(10,2);

alter table bajaj1
modify `Close Price` float(10,2);

select *
from bajaj1;

# CREATION OF EICHER1 TABLE FROM A SOURCE TABLE EICHER AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY


select *
from eicher;

alter table eicher
add newdate varchar(50);

update eicher
set newdate=str_to_date(date,"%d-%M-%Y");

alter table eicher drop column Date;

alter table eicher rename column newdate to Date;

create table eicher1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from eicher
group by `Date`
order by 1;

update `eicher1`
set `20 Day MA` = null
limit 19;

update `eicher1`
set `50 Day MA` = null
limit 49;

alter table eicher1
modify `20 Day MA` float(10,2);

alter table eicher1
modify `50 Day MA` float(10,2);

alter table eicher1
modify `Close Price` float(10,2);

select *
from eicher1;

# CREATION OF HERO1 TABLE FROM A SOURCE TABLE HERO  AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY

select *
from hero;

alter table hero
add newdate varchar(50);

update hero
set newdate=str_to_date(date,"%d-%M-%Y");

alter table hero drop column Date;

alter table hero rename column newdate to Date;

create table hero1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from hero
group by `Date`
order by 1;

update `hero1`
set `20 Day MA` = null
limit 19;

update `hero1`
set `50 Day MA` = null
limit 49;

alter table hero1
modify `20 Day MA` float(10,2);

alter table hero1
modify `50 Day MA` float(10,2);

alter table hero1
modify `Close Price` float(10,2);

select *
from hero1;

# CREATION OF INFOSYS1 TABLE FROM A SOURCE TABLE INFOSYS HERO  AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY

select *
from infosys;

alter table infosys
add newdate varchar(50);

update infosys
set newdate=str_to_date(date,"%d-%M-%Y");

alter table infosys drop column Date;

alter table infosys rename column newdate to Date;

create table infosys1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from infosys
group by `Date`
order by 1;

update `infosys1`
set `20 Day MA` = null
limit 19;

update `infosys1`
set `50 Day MA` = null
limit 49;

alter table infosys1
modify `20 Day MA` float(10,2);

alter table infosys1
modify `50 Day MA` float(10,2);

alter table infosys1
modify `Close Price` float(10,2);

select *
from infosys1;

# CREATION OF TCS1 TABLE FROM A SOURCE TABLE TCS  AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY

select *
from tcs;

alter table tcs
add newdate varchar(50);

update tcs
set newdate=str_to_date(date,"%d-%M-%Y");

alter table tcs drop column Date;

alter table tcs rename column newdate to Date;

create table tcs1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from tcs
group by `Date`
order by 1;

update `tcs1`
set `20 Day MA` = null
limit 19;

update `tcs1`
set `50 Day MA` = null
limit 49;

alter table tcs1
modify `20 Day MA` float(10,2);

alter table tcs1
modify `50 Day MA` float(10,2);

alter table tcs1
modify `Close Price` float(10,2);

select *
from tcs1;

# CREATION OF TVS1 TABLE FROM A SOURCE TABLE TVS AND FINDING THE MOVING AVERAGE OF 20 AND 50 DAY

select *
from tvs;

alter table tvs
add newdate varchar(50);

update tvs
set newdate=str_to_date(date,"%d-%M-%Y");

alter table tvs drop column Date;

alter table tvs rename column newdate to Date;

create table tvs1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from tvs
group by `Date`
order by 1;

update `tvs1`
set `20 Day MA` = null
limit 19;

update `tvs1`
set `50 Day MA` = null
limit 49;

alter table tvs1
modify `20 Day MA` float(10,2);

alter table tvs1
modify `50 Day MA` float(10,2);

alter table tvs1
modify `Close Price` float(10,2);

select *
from tvs1;

# CREATING A MASTER TABLE 

create table `Master table`(
`Date` date,
`Bajaj` double,
`TCS` double,
`TVS` double,
`Infosys` double,
`Eicher` double,
`Hero` double);
select * from `Master Table`;

# INSERTING THE DATE AND CLOSE PRICE OF ALL TABLES INTO A MASTER TABLE

insert into `Master Table`(`Date`,`Bajaj`, `TCS`, `TVS`, `Infosys`, `Eicher`, `Hero`)
select b.`Date`, b.`Close Price` as `Bajaj`, tc.`Close Price` as `TCS`,tv.`Close Price` as `TVS`,
I.`Close Price` as `Infosys`, ei.`Close Price` as `Eicher`,he.`Close Price` as `Hero`
from `bajaj` b 
join `tcs` tc on b.`Date` = tc.`Date`
join `tvs` tv on b.`Date` = tv.`Date`
join `infosys` I on b.`Date` = I.`Date` 
join `eicher` ei on b.`Date` = ei.`Date`
join `hero` he on b.`Date` = he.`Date`
order by 1;

select * from `Master Table`;

#GENERATE BUY AND SELL SIGNAL USING BAJAJ1 AND STORE THE DATA IN TABLE BAJAJ2

create table bajaj2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) 	LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from bajaj1;

select *
from bajaj2;

#GENERATE BUY AND SELL SIGNAL USING EICHER1 AND STORE THE DATA IN TABLE EICHER2

create table eicher2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from eicher1;

select *
from eicher2;

#GENERATE BUY AND SELL SIGNAL USING HERO1 AND STORE THE DATA IN TABLE HERO2

create table hero2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from hero1;

select *
from hero2;

#GENERATE BUY AND SELL SIGNAL USING INFOSYS1 AND STORE THE DATA IN TABLE INFOSYS2

create table infosys2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from infosys1;

select *
from infosys2;

#GENERATE BUY AND SELL SIGNAL USING TCS1 AND STORE THE DATA IN TABLE TCS2

create table tcs2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from tcs1;

select *
from tcs2;


#GENERATE BUY AND SELL SIGNAL USING TVS1 AND STORE THE DATA IN TABLE TVS2

create table tvs2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
     WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
     ELSE 'HOLD' END as 'signal'
     from tvs1;

select *
from tvs2;

#CREATE USER DEFINED FUNCTION

DELIMITER $$
create FUNCTION Signal_check (s varchar(20))

returns VARCHAR(20) deterministic 
begin
declare Signal_is varchar(20) ;
set Signal_is =(select `signal` from bajaj2 where Date = s);
return Signal_is ;
end 
$$
DELIMITER ;

# CALL UDF

select Signal_check('2015-05-18');	

#END