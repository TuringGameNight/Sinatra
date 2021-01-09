# Game Night Sinatra

## Getting Started

Run `bundle install`
Run `figaro install`

Add the BoardGameAtlas `CLIENT_ID` to the `application.yml` file

You may run `shotgun` to start a Sinatra server. You may test the API endpoints in Postman with `localhost:9393`

## Endpoints

This Microservice has an endpoint to search for games
```
get '/api/v1/search'
```

A query param for `name` can be passed to return all board games matching that name from the Board Game Atlas API

### Sample Response

Querying the endpoint `GET /api/v1/search?name=clue` returns the following data:

```json
{
    "data": [
        {
            "id": null,
            "type": "board_game",
            "attributes": {
                "name": "Clue",
                "description": "<p>The classic detective game! In <strong>Clue</strong>, players move from room to room in a mansion to solve the mystery of: who done it, with what, and where? Players are dealt character, weapon, and location cards after the top card from each card type is secretly placed in the confidential file in the middle of the board. Players must move to a room and then make an accusation against a character saying they did it in that room with a specific weapon. The player to the left must show one of any cards accused to the accuser if in that player's hand. Through deductive reasoning each player must figure out which character, weapon, and location are in the secret file. To do this, each player must uncover what cards are in other players hands by making more and more accusations. Once a player knows what cards the other players are holding, they will know what cards are in the secret file. A great game for those who enjoy reasoning and thinking things out.</p>",
                "age_range": "8+",
                "duration": 60,
                "image": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254847936-611WyTryCvL.jpg",
                "game_type": null
            }
        },
        {
            "id": null,
            "type": "board_game",
            "attributes": {
                "name": "13 Clues",
                "description": "<p>The city of London has been shaken by heinous crimes, and Scotland Yard is groping in the dark. 13 Clues, set at the end of the 19th century, puts players in the shoes of the detectives, each trying to solve their own mystery. Each player sees the clues - person + location + weapon - for the other players but not their own. They investigate by asking questions, by consulting the secret informant, and by making accusations in order to collect clues and rule out suspects. The goal of the game is to identify which of the 13 clues match their case before the others do!</p>",
                "age_range": "14+",
                "duration": 45,
                "image": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540939172028",
                "game_type": null
            }
        }
    ]
}
```
