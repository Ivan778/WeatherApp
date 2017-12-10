# Введение

В этом документе будет описан план тестирования приложения Awenew. Более подробную информацию о приложении можно найти в документе README.md.

# Объект тестирования

Проект, который будет тестироваться, -- приложение Awenew. У него имеется четыре основных варианта использования:

1. Просмотреть текущую погоду и текущее местоположение;
2. Просмотреть новости;
3. Найти погоду по городу и стране;
4. Просмотреть историю посещения приложения.

У каждого варианта использования есть поток событий (описаны в директории "Потоки событий"). Каждый из этих потоков будет протестирован в соответствии с требованиями приложения. 

# Риски

Данные для приложения поступают с серверов google, tut.by и openweather. Соответственно, работа приложения напрямую зависит от них (имеется ввиду наполняемость контентом). Для получения доступа к серверам требуется соединение с интернетом. Таким образом, на скорость работы приложения будут влиять:

1. Соединение с интернетом;
2. Состояние серверов вышеперечисленных компаний.

# Аспекты тестирования

Итак, рассмотрим тестирование приложения в соответствии с вариантами использования. 

### Просмотреть текущую погоду и текущее местоположение
Этот вариант использования необходимо протестировать на:
1. Вывод погоды и местоположения пользователя при наличии интернет-соединения;
2. Правильность выводимой информации;
3. Вывод информации при возобновлении подключения к интернету, если вход в приложение был осуществлён без интернет соединения;
4. Реакция приложения на отсутствие интернет-соединения, выводит ли оно соответсвующее уведомление.

### Просмотреть новости
Этот вариант использования необходимо протестировать на:
1. Вывод новостей при наличии интернет-соединения;
2. Актуальность новостей (дата публикации новости должна совпадать с текущей датой);
3. Вывод информации при возобновлении подключения к интернету, если вход в приложение был осуществлён без интернет соединения;
4. Реакция приложения на отсутствие интернет-соединения, выводит ли оно соответсвующее уведомление.

### Найти погоду по городу и стране
1. Вывод подсказок мест после ввода названия города и нажатия кнопки "Найти";
2. Вывод текущей погоды и прогноза после нажатия на один из предложенных найденных вариантов совпадения;
3. Соответствие выводимых данных о погоде реальным данным;
4. Реакция приложения на отсутствие интернет-соединения, выводит ли оно соответсвующее уведомление.

### Просмотреть историю посещения приложения
1. Запись сеанса пользователя при запуске приложения;
2. Возможность просмотра сеанса.

# Подходы к тестированию

Для тестирования приложения необходимо вручную проверить каждый вариант использования.

# Представление результатов
