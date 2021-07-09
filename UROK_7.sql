use shop;
# Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

select *
from orders;

select *
from users;

insert into users (name, birthday_at) value ('Tima', '2020-09-12');
update users
set created_at = now(),
    update_at  =now()
where name = 'Tima';
insert into orders(user_id)
values (1),
       (2),
       (3);

select *
from users,
     orders
where orders.user_id = users.id;

# Выведите список товаров products и разделов catalogs, который соответствует товару.

select *
from products;
select *
from catalogs;

select *
from products,
     catalogs
where products.catalog_id = catalogs.id;


# (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
# Поля from, to и label содержат английские названия городов, поле name — русское.
# Выведите список рейсов flights с русскими названиями городов.

create table flights
(
    id        serial primary key,
    city_from varchar(70),
    city_to   varchar(70)
);
insert into flights (city_from, city_to)
values ('Saint Petersburg', 'Moscow'),
       ('Volgograd', 'Kazan'),
       ('Surgut', 'Tyumen'),
       ('Yekaterinburg', 'Khanty-Mansiysk');

create table cities
(
    label varchar(255),
    name  varchar(255)
);

insert into cities (label, name)
values ('moscow', 'Москва'),
       ('irkutsk', 'Иркутск'),
       ('novgorod', 'Новгород'),
       ('kazan', 'Казань'),
       ('omsk', 'Омск'),
       ('Volgograd', 'Волгоград'),
       ('Surgut', 'Сургут'),
       ('Yekaterinburg', 'Екатеринбург'),
       ('Khanty-Mansiysk', 'Ханты-Мансийск');

insert into cities (label, name)
VALUES ('Saint Petersburg', 'Санкт-Петербург'),
       ('Tyumen', 'Тюмень');


select id                                                  as flight_id,
       (select name from cities where label = `city_from`) as 'city_from',
       (select name from cities where label = `city_to`)   as 'city_to'
from flights;

