use vk;

# Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека,
# который больше всех общался с выбранным пользователем (написал ему сообщений).
SELECT from_user_id
     , COUNT(*) as send
FROM messages
WHERE to_user_id = 51
GROUP BY from_user_id
ORDER BY send DESC;

# Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

select count(distinct likes.user_id)
from profiles,
     likes
where timestampdiff(year, birthday, now()) < 10;

# Определить кто больше поставил лайков (всего): мужчины или женщины.


select count(likes.user_id) as m
from profiles,
     likes
where profiles.user_id = likes.user_id
  and profiles.gender = 'f'
order by likes.user_id;

select (select count(likes.user_id)
        from profiles,
             likes
        where profiles.user_id = likes.user_id
          and profiles.gender = 'f'),
       (select count(likes.user_id)
        from profiles,
             likes
        where profiles.user_id = likes.user_id
          and profiles.gender = 'm')






