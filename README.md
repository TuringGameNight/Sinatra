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
