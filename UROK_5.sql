use shop;
select *
from users;
# Task_1
update users
set created_at = now(),
    update_at  = now();

# Task_2

select *
from users;

update users
set created_at = '20.10.2017 8:10',
    update_at  = '20.10.2017 8:10';


update users
set update_at  = str_to_date(update_at, '%d.%m.%Y %h:%i'),
    created_at = str_to_date(created_at, '%d.%m.%Y %h:%i');


# Task_3
select *
from storehouse_products;

insert into storehouse_products (storehouse_id, product_id, value, created_at, update_at)
values (1, 1, 23, now(), now()),
       (2, 2, 45, now(), now()),
       (3, 4, 0, now(), now()),
       (4, 4, 34123, now(), now()),
       (5, 5, 0, now(), now());

select value
from storehouse_products
order by case when value = 0 then 434234343 else value end;


# Task_4

select *
from users;

select birthday_at
from users
where birthday_at = 'may'
   or birthday_at = 'august';


# Task_5

insert into catalogs(name)
values ('Кулер'),
       ('SSD'),
       ('HHD');

select *
from catalogs
order by case
             when id = 5 then 1
             when id = 1 then 2
             when id = 2 then 3
             end
limit 3, 6;


select *
from catalogs
where id in (5, 1, 2);


# Агрегация данных

# Task_1

select *
from users;

select round(avg(year(curdate()) - year(birthday_at)), 0)
from users;


# Task_2

select group_concat(name), count(id), dayname(birthday_at) as week
from users
group by week;


# Task_3

select exp((sum(log(id))))
from users;




