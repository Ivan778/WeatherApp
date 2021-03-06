# Требования к проекту

# 1 Введение

Целью разработки является приложение для мобильных устройств под управлением операционной системы iOS, которое предоставляет пользователю доступ к актуальным новостям, погоде и текущему местоположению.

## Аналоги

Главным аналогом является приложение от Google под названием "Google News & Weather". Разрабатываемое приложение отличается тем, что может вывести местоположение пользователя. Дизайн разрабатываемого приложения будет следовать принципам iOS Design Principles в отличие от аналога от Google, который следует принципам Android Design Guidelines.

# 2 Требования пользователя
### 2.1 Программные интерфейсы

Приложение должно быть написано на языке Swift в Xcode с использованием Google API (для реверс-геокодинга, т.к. нативный геокодинг работает не для всех стран), OpenWeatherMap API (получение данных о погоде) и TUT.BY (получение новостей).

### 2.2 Интерфейс пользователя

Данный проект является продолжением уже существующей версии. Ниже представлен интерфейс на данный момент:

![Alt text](AppScreenShots/MainScreen.png "Главный экран")
![Alt text](AppScreenShots/HistoryScreen.png "История погоды")
![Alt text](AppScreenShots/OpenedHistory.png "Просмотр истории")

Ниже представлен дизайн разрабатываемого приложения:

<img src="https://github.com/Ivan778/Awenew/blob/master/AppScreenShots/ToDevelop/Main.png" alt="Главная" width="400">
<img src="https://github.com/Ivan778/Awenew/blob/master/AppScreenShots/ToDevelop/WeatherSearch.png" alt="Погода" width="400">
<img src="https://github.com/Ivan778/Awenew/blob/master/AppScreenShots/ToDevelop/News.png" alt="Новости" width="400">
<img src="https://github.com/Ivan778/Awenew/blob/master/AppScreenShots/ToDevelop/History.png" alt="История" width="400">


### 2.3 Характеристика пользователей

Целевая аудитория приложения - любые пользователи, интересующиеся погодой и новостями.
Минимальный необходимый навык - умение использовать устройство под управлением iOS.

### 2.4 Предположения и зависимости

Для использования приложения необходимо соединение с интернетом. В случае его отсутствия будет доступна только история запросов пользователя.

# 3 Системные требования

Любое устройство под управлением iOS 9.3.x и выше.

### 3.1 Функциональные требования:

1. вывод геокоординат (широта, долгота) и адреса (улица, город, страна) места, где находится пользователь;
2. вывод текущей погоды в соответствии с городом и страной;
3. сохранение данных из первых двух пунктов и возможность их просмотра;
4. вывод новостей города и (или) страны в количестве до 10 штук;
5. возможность поиска погоды других городов (полнота списка городов зависит от OpenWeatherMap API, который предоставляет данные о погоде);
6. возможность просмотра прогноза погоды (на пять дней вперёд).


### 3.2 Нефункциональные требования
#### 3.2.1 Атрибуты качества:
1. актуальные данные: даты публикации новостей должна совпадать с текущей датой. Новости, которые не подпадают под этот критерий, не должны быть показаны пользователю.
2. энергоэффективность: геолокация должна быть использована только при запуске приложения. После определения координат пользователя она должна быть немедленно выключена.
#### 3.2.2 Внешние интерфейсы:
1. минимальное поддерживаемое разрешение должно быть 640×960 (т.е. начиная с 3,5-дюймовых моделей iOS-устройств).
#### 3.2.3 Ограничения:
1. приложение должно быть написано на языке Swift версии 3 или выше;
2. IDE для написания приложения - Xcode версии 8 или выше.
