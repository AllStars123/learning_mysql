use shop;

drop table if exists catalogs;
create table catalogs
(
    id   serial primary key,
    name varchar(255) unique
) comment = 'Разделы интерент-магазина';
# describe catalogs;

insert into catalogs(name)
values ('Процессоры'),
       ('Материнские платы'),
       ('Видеокарты');
# delete
# from catalogs
# where id > 2;
select *
from catalogs;

update catalogs
set name = 'Процессоры(Intel)'
where name = 'Процессоры';

drop table if exists users;
create table users
(
    id          serial primary key,
    name        varchar(255),
    birthday_at date comment 'Дата рождения',
    created_at  datetime default current_timestamp,
    update_at   datetime default current_timestamp on update current_timestamp
) comment = 'Покупатели';

insert into users (id, name, birthday_at)
values (1, 'Nikita', '2000-02-26');
select *
from users;

drop table if exists products;
create table products
(
    id          serial primary key,
    name        varchar(255),
    description text,
    price       decimal(11, 2),
    catalog_id  int unsigned,
    created_at  datetime default current_timestamp,
    update_at   datetime default current_timestamp on update current_timestamp,
    key index_of_catalog_id (catalog_id)
) comment = 'Товарные позиции';

drop table if exists orders;
create table orders
(
    id         serial primary key,
    user_id    int unsigned,
    created_at datetime default current_timestamp,
    update_at  datetime default current_timestamp on update current_timestamp,
    key index_of_user_id (user_id)
) comment = 'Заказы';

drop table if exists orders_products;
create table orders_products
(
    id         serial primary key,
    order_id   int unsigned,
    product_id int unsigned,
    total      int unsigned default 1,
    created_at datetime     default current_timestamp,
    update_at  datetime     default current_timestamp on update current_timestamp
) comment = 'Состав заказа';

drop table if exists discounts;
create table discounts
(
    id          serial primary key,
    user_id     int unsigned,
    product_id  int unsigned,
    discount    float unsigned comment 'Величина скидки от 0.1 до 1.0',
    created_at  datetime default current_timestamp,
    update_at   datetime default current_timestamp on update current_timestamp,
    started_at  datetime,
    finished_at datetime,
    key index_of_user_id (user_id),
    key index_of_product_id (product_id)
) comment = 'Скидки';

drop table if exists storehouse;
create table storehouse
(
    id         serial primary key,
    name       varchar(255) comment 'Название склада',
    created_at datetime default current_timestamp,
    update_at  datetime default current_timestamp on update current_timestamp
) comment = 'Склады';

drop table if exists storehouse_products;
create table storehouse_products
(
    id            serial primary key,
    storehouse_id int unsigned,
    product_id    int unsigned,
    value         int unsigned comment 'Запас товарной позиции на складе',
    created_at    datetime default current_timestamp,
    update_at     datetime default current_timestamp on update current_timestamp
) comment = 'Запасы на складе';


select *
from catalogs
where id between 1 and 2;

insert into users(name, birthday_at)
values ('Геннадий', '1990=10-20'),
       ('Наталья', '1990-2-22');

select *
from users
where birthday_at >= '1990-01-01'
  and birthday_at < '2000-01-01';
select *
from users
where birthday_at like '199%';

select *
from catalogs
order by id;

insert into products (name, description, price)
values ('intel', 'лучшие процессоры', 8394);

insert into products(name, description, price, catalog_id)
values ('amd', 'dsml', 48439, 2),
       ('appel', 'djknv', 483894, 2),
       ('intel', 'cmkd', 43849, 1),
       ('apple', 'm1', 48389, 1);

update products
set catalog_id = 2
where id = 1;

update products
set price = price * 0.9
where catalog_id = 2
  and price > 5000;
delete
from products
order by price desc
limit 2;
select *
from products;

create table distances
(
    id       serial primary key,
    x1       int not null,
    y1       int not null,
    x2       int not null,
    y2       int not null,
    distance double as (sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2)))
) comment 'расстояние между двумя точками';


create table rubrics
(
    id   serial primary key,
    name varchar(255) comment 'название раздела'
) comment = 'разделы интернет-магазина';

insert into rubrics
values (null, 'Видеокарты'),
       (null, 'Память');

select name
from catalogs
union
select name
from rubrics
order by name desc;

select *
from products;
select *
from catalogs;

select id, name, catalog_id
from products
where catalog_id = (select catalog_id from catalogs where catalogs.name = 'Материнские платы');


insert into distances(x1, y1, x2, y2)
values (1, 1, 2, 4),
       (2, 3, 1, 2),
       (3, 6, 8, 3);

delete
from distances
where distance > 20;
select *
from distances;

alter table distances
    modify distance double as (sqrt(pow(x1 - x2, 10) + pow(y1 - y2, 10)));

select *
from products;

select name
from users
limit 2;
select distinct id
from catalogs;

select substring(name, 1, 5) as name
from users;

select name,
       if(timestampdiff(year, birthday_at, now()) >= 18,
          'совершеннолетний',
          'несоврешеннолетний') as status
from users;

select substring(birthday_at, 1, 3)
from users as decade;
select count(*) as count, substring(birthday_at, 1, 3) as decade
from users
group by decade
with rollup;
select group_concat(name order by name desc separator ' '), substring(birthday_at, 1, 3) as decade
from users
group by decade
order by decade;

select distinct name
from users;
select count(id)
from users;

drop table if exists tbl;
create table tbl
(
    id    int not null,
    value int default null
);

insert into tbl
values (1, 230),
       (2, null),
       (3, 405),
       (4, null);

insert into tbl (id)
values (5);

select *
from tbl;

select count(id), count(value)
from tbl;


create table tbl1
(
    value varchar(255)
);

insert into tbl1
values ('fst1'),
       ('fst2'),
       ('fst3');

create table tbl2
(
    value varchar(255)
);

insert into tbl2
values ('snd1'),
       ('snd2'),
       ('snd3');

select *
from tbl1,
     tbl2;


select p.name, p.price, c.name

from catalogs as c
         join products as p
where c.id = p.catalog_id;

alter table products
    change catalog_id catalog_id bigint unsigned default null;

alter table products
    add foreign key (catalog_id) references catalogs (id) on delete no action on update no action;

alter table products
    drop foreign key products_ibfk_1;

alter table products
    add constraint fk_catalog_id foreign key (catalog_id) references catalogs (id) on delete cascade on update cascade;