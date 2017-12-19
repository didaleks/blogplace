# blogplace
Json API на Rails

Сущности: 
user - имеет только логин.
post - принадлежит юзеру
rating - оценка поста. Значение от 1 до 5.

Actions:
1. Создать пост. Принимает заголовок и содержание поста (не могут быть пустыми), а также логин и айпи автора. Если автора с таким логином еще нет, необходимо его создать. Возвращает либо атрибуты поста со статусом 200, либо ошибки валидации со статусом 422. 
2. Поставить оценку посту. Принимает айди поста и значение, возвращает новый средний рейтинг поста. Важно: экшен должен корректно отрабатывать при любом количестве конкурентных запросов на оценку одного и того же поста. 
3. Получить топ N постов по среднему рейтингу. Просто массив объектов с заголовками и содержанием. 
4. Получить список айпи, с которых постило несколько разных авторов. Массив объектов с полями: айпи и массив логинов авторов.
