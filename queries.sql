-- write your queries here

-- first query
select * 
from owners
left join vehicles
on owners.id = vehicles.owner_id;

-- second query
select first_name, last_name, count(*) as count
from owners
inner join vehicles
on owners.id = vehicles.owner_id
group by first_name, last_name
order by first_name;

-- third query
select first_name, last_name, 
    round(avg(price)) as average_price, 
    count(*) as count
from owners
inner join vehicles
on owners.id = vehicles.owner_id
group by first_name, last_name
having count(*) > 1 and round(avg(price)) > 10000
order by first_name desc;