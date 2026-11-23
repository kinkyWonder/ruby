Взял в идею чето типо базы игрушек

# Модели:
Studio - разработчик.
- Имеет: name, country и game_count

Genre - жанр. У игры он один, просто потому что я очень плохо понимаю эту штуковину с has_many и belongs, даже с гуглом не разобрался.
- Имеет: name

Game - игра.
- Имеет: title, release_year, studio_id, genre_id

Соотвественно полностью изменять можно только игры:
- GET /api/games или GET /api/games/id для конкретной
- POST /api/games
- PATCH /api/games/id
- DELETE /api/games/id

А на студии и жанры можно только поглазеть:
- GET /api/studios или /api/studios/id
- GET /api/genres или /api/genres/id

Пример:

# Примеры запросов:

Создание игры на 127.0.0.1:3000/api/games
{
  "game": {
    "title": "Elden Ring",
    "release_year": "2022",
    "studio_id": 1,
    "genre_id": 1
  }
}

Получение списка студий:
curl 127.0.0.1:3000/api/studios

Честно отправлять запросы с телом через curl я не научился сам, поэтому использовал какой-то Thunder Client, в нем просто jsonчики можно прописывать. 
И извиняюсь за некрасивый ридми, мне было лень открывать дипсик и просить написать за меня, а сам я вообще во всем этом не шарю.