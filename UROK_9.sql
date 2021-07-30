create database sample;

use sample;
# В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
# Переместите запись id = 1 из таблицы shop.users в таблицу sample.users.
# Используйте транзакции.

start transaction;

select *
from shop.users
where id = 1;

insert into sample.users(name, birthday_at, created_at, update_at)
select name, birthday_at, created_at, update_at
from shop.users
where id = 1;

delete
from shop.users
where shop.users.id = 1;

commit;

# Создайте представление, которое выводит название name товарной позиции
# из таблицы products и соответствующее название каталога name из таблицы catalogs.

create view prod_1(name) as
select products.name
from products
         join catalogs on products.name = catalogs.name;


# Пусть имеется таблица с календарным полем created_at.
# В ней размещены разряженые календарные записи за август 2018 года
# '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
# Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1,
# если дата присутствует в исходном таблице и 0, если она отсутствует.

create table tabl_1
(
    create_at DATE
);

insert into tabl_1
values ('2018-08-01'),
       ('2018-08-04'),
       ('2018-08-06'),
       ('2018-08-08');

# не понял как сделать данное задание :(

 select v.*  from (select adddate('2018-08-01', t0.i)
from (select 0 i
      union
      select 1
      union
      select 2
      union
      select 3
      union
      select 4
      union
      select 5
      union
      select 6
      union
      select 7
      union
      select 8
      union
      select 9) t0
union
select adddate('2018-08-10', t0.i)
from (select 0 i
      union
      select 1
      union
      select 2
      union
      select 3
      union
      select 4
      union
      select 5
      union
      select 6
      union
      select 7
      union
      select 8
      union
      select 9) t0
union
select adddate('2018-08-20', t0.i)
from (select 0 i
      union
      select 1
      union
      select 2
      union
      select 3
      union
      select 4
      union
      select 5
      union
      select 6
      union
      select 7
      union
      select 8
      union
      select 9) t0) as v
;


# Пусть имеется любая таблица с календарным полем created_at.
# Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.


# через join не получилось
delete
from tabl_1
where create_at = (select t_1.create_at
                   from tabl_1 as t_1
                            inner join (select create_at from tabl_1 order by create_at desc limit 5) as t_2
                                       on t_1.create_at not in (t_2.create_at));

# тут рабоатет
delete
from tabl_1
where create_at not in
      (select create_at from (select create_at from tabl_1 order by create_at desc limit 5) as fvd)
order by create_at desc;



# Практическое задание по теме “Администрирование MySQL”

# Создайте двух пользователей которые имеют доступ к базе данных shop.
# Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
# второму пользователю shop — любые операции в пределах базы данных shop.

create user 'nikita_read' identified by '123';
grant select on shop.* to 'nikita_read';
revoke all privileges on *.* from 'nikita_read';

create user 'nikita_all_priv' identified by '123';
grant all privileges on shop.* to 'nikita_all_priv';

FLUSH PRIVILEGES;

show grants for 'nikita_read';
show grants for 'nikita_all_priv';


# Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ,
# имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ
# к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако,
# мог бы извлекать записи из представления username.

drop table if exists accounts;
create table accounts
(
    id       serial primary key,
    name     varchar(255),
    password varchar(255)
);

insert into accounts(name, password)
values ('nikita', '123'),
       ('anna', '123'),
       ('tima', '123');

select *
from accounts;

create view username as
select id, name
from accounts;

create user if not exists 'user_read' identified by '123';

grant select on shop.username to 'user_read';


# Практическое задание по теме “Хранимые процедуры и функции, триггеры"

# Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
# С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
# с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер",
# с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //
drop function if exists hello;
create function hello()
    returns varchar(255)
    reads sql data
begin
    declare hello_time varchar(255);
    if (current_time between '6:00:00' and '12:00:00') then
        set hello_time = 'Доброе утро';
    elseif (current_time between '12:00:00' and '18:00:00') then
        set hello_time = 'Добрый день';
    elseif (current_time between '00:00:00' and '6:00:00') then
        set hello_time = 'Доброй ночи';
    return hello_time;
        end if;
end//

DELIMITER ;

select hello();

# В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
# Допустимо присутствие обоих полей или одно из них.
# Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
# Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
# При попытке присвоить полям NULL-значение необходимо отменить операцию.

select * from products;
# выдаёт ошибку если оба значения null
delimiter //
drop trigger
    not_null;
create trigger not_null before insert on products
    for each row
    begin
        if (new.name is null and NEW.description is null) then signal sqlstate '45000' set message_text = 'My Error Message';
    end if;
end;
delimiter ;

# если нужно вставить default
create trigger not_null before insert on products
    for each row
    begin
        if (NEW.name is null) then set new.name = 'default';
        end if;
        if (NEW.description is null) then set NEW.description = 'default';
        end if;
    end;

# Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
# Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел.
# Вызов функции FIBONACCI(10) должен возвращать число 55.

drop function if exists FIBONACCI;

create function FIBONACCI(fib_num int)
returns int
    deterministic
begin
    declare num_1 int default 1;
    declare num_2 int default 1;
    declare fib_sum int default 0;
    declare i int default 0;
    if (fib_num > 0) then
        while i < fib_num - 2 do
            set fib_sum = num_1 + num_2;
            set num_1 = num_2;
            set num_2 = fib_sum;
            set i = i + 1;
            end while;
        return num_2;
    end if;
end;

select FIBONACCI(10);
