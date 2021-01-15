# Game Night API

[![Build Status](https://travis-ci.com/TuringGameNight/Sinatra.svg?branch=main)](https://travis-ci.com/TuringGameNight/Sinatra)

## Table of Contents

  - [What It Does](#what-it-does)
  - [Technology](#technology)
  - [How to Install](#how-to-install)
  - [Testing](#testing)
  - [Endpoints](#endpoints)
  - [Project Leads](#project-leads)
  - [Acknowledgments](#acknowledgments)

## What It Does

This is a Sinatra micro-service API app that supports GameNight (about below). This microservice communicates with the [Board Game Atlas API](https://www.boardgameatlas.com/api/docs) to provide customized board game information via an API endpoint to the main back-end application for GameNight.


**GameNight Description**: Plan your next game night with GameNight! With this app you can add games to your shelf, get your friends to do the same, and when it is time to plan a game night, leave the planning to us. We will get all the games collated and allow your party to vote on the game(s) you want to play before the game night!

## Technology

This ruby API application is built on Sinatra with support from:
- JSON:API Serializer
- Faraday
- Figaro
- and many other gems! 🤩

## How to Install

To install and run this application locally:

1. To setup the repository locally, from your command line:
```
$ git clone git@github.com:turinggamenight/Sinatra.git
$ bundle install
```

2. Add your Board Game Atlas `CLIENT_ID` to the `application.yml` file created after running:
```
$ figaro install
```

3. You may need to install the `shotgun` gem (used for running a local server) if not already installed:
```
$ gem install shotgun
```

4. To start the Sinatra server, run:
```
$ shotgun
```

5. You may access the `search` API endpoint in Postman with the base URL `http://localhost:9393`. Success! 🎉

6. You may also use the production application using the base URL: `https://turinggamenightsinatra.herokuapp.com` without needing to install this application locally.

## Testing

[RSpec](https://rspec.info/) was used for the testing of this project.

To run all tests, run the command below from the root directory
```
$ bundle exec rspec
```

## Endpoints

### Search

This Microservice has an endpoint to search for board games by name
```
get '/api/v1/search'
```

A query param for `name` can be passed to return all board games matching that name from the Board Game Atlas API. Up to a maximum of 20 board games are returned.

#### Sample Response

Querying the endpoint `GET /api/v1/search?name=clue` returns the following sample data:

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
                "num_players": "3-6",
                "game_type": "Deduction, Family Game"
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
                "num_players": "2-6",
                "game_type": ""
            }
        }
    ]
}
```

## Project Leads

- Austin Aspaas - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/austin-aspaas-4626611bb/) - [![GitHub][github-shield]](https://github.com/evilaspaas1)
- Eduardo Parra - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/eduardo--parra/) - [![GitHub][github-shield]](https://github.com/helloeduardo)
- Garrett Cottrell - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/garrett-cottrell-52850834/) - [![GitHub][github-shield]](https://github.com/GarrettCottrell)
- Grant Dempsey - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/grant-dempsey-8a9a16169/) - [![GitHub][github-shield]](https://github.com/GDemps)
- Greg Mitchell - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/gregory-j-mitchell/) - [![GitHub][github-shield]](https://github.com/GregJMitchell)
- Kate Tester - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/katemorris/) - [![GitHub][github-shield]](https://github.com/katemorris)
- Philip DeFraties - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/philip-defraties/) - [![GitHub][github-shield]](https://github.com/PhilipDeFraties)
- Shaun James - [![LinkedIn][linkedin-shield]](https://github.com/ShaunDaneJames) - [![GitHub][github-shield]](https://www.linkedin.com/in/shaun-james-2707a61bb/)
- Shaunda Cunningham - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/shaunda-cunningham/) - [![GitHub][github-shield]](https://github.com/smcunning)
- Taylor Phillips - [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/taphill/) - [![GitHub][github-shield]](https://github.com/taphill)

## Acknowledgments

Thank you to the [Board Game Atlas API](https://www.boardgameatlas.com/api/docs) for providing the board game data that this project relies on.

<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[github-shield]: https://img.shields.io/badge/-GitHub-black.svg?style=flat-square&logo=github&colorB=555
