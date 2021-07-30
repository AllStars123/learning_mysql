use shop;

# Создайте таблицу logs типа Archive.
# Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу
# logs помещается время и дата создания записи, название таблицы,
# идентификатор первичного ключа и содержимое поля name.
drop table if exists logs;
create table logs
(
    create_at  datetime        not null,
    table_name varchar(255)    not null,
    id         bigint unsigned not null,
    name       varchar(255)    not null
) engine = ARCHIVE;

# Trigger users
delimiter //
drop trigger if exists logs_user;
create trigger logs_user
    after insert
    on users
    for each row
begin
    insert into logs value (NEW.created_at, 'users', NEW.id, NEW.name);
end//
delimiter ;

# Trigger catalogs
delimiter //
drop trigger if exists logs_catalogs;
create trigger logs_catalogs
    after insert
    on catalogs
    for each row
begin
    insert into logs value (now(), 'catalogs', NEW.id, NEW.name);
end//
delimiter ;

# Trigger products
delimiter //
drop trigger if exists logs_products;
create trigger logs_products
    after insert
    on products
    for each row
begin
    insert into logs value (NEW.created_at, 'products', NEW.id, NEW.name);
end//
delimiter ;

# Проверка
insert into catalogs(name) value ('Монитор');
insert into users(name, birthday_at, created_at) value ('Nikita', '2000-02-26', now());
insert into products(name, description, price, catalog_id) value ('Joj', 'mvlsd', 450, 2);


# (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.


# Добавляет указанное количество юзеров
delimiter //
drop procedure if exists AddUsers;
create procedure AddUsers(num int)
begin
    declare user_num int default 0;
    while num > 0
        do
            insert into users(name, birthday_at, created_at, update_at) value (concat('users_', user_num), now(), now(), now());
            set num = num - 1;
            set user_num = user_num + 1;
        end while;
end//
delimiter ;

call AddUsers(4);


# Добавляет один миллион юзеров
delimiter //
drop procedure if exists AddOneMillionUsers;
create procedure AddOneMillionUsers()
begin
    declare user_num int default 0;
    declare num int default 1000000;
    while num > 0
        do
            insert into users(name, birthday_at, created_at, update_at) value (concat('users_', user_num), now(), now(), now());
            set num = num - 1;
            set user_num = user_num + 1;
        end while;
end//
delimiter ;



# Практическое задание по теме "NoSQL"

# В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
SADD ip '127.0.0.1' '127.0.0.2' '127.0.0.3'
SMEMBERS ip
SCARD ip

# При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот,
# поиск электронного адреса пользователя по его имени.

set nikita@yandex.ru nikita
set nikita nikita@yandex.ru

get nikita@yandex.ru
get nikita


# Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

use catalogs;
db.catalogs.insertMany([
    {"name": "Клавиатура"}, {"name": "Наушнкик"}, {"name": "Микрофоны"},
])


use products;
db.catalogs.insertMany([
    {"name": "Intel_1", "description": "Процессор", "price": "10000", "catalog_id": 2, "created_at": new Date(), "updated_at": new Date()},
    {"name": "Nvidia_1", "description": "Видеокарты", "price": "22000", "catalog_id": 1, "created_at": new Date(), "updated_at": new Date()},
])