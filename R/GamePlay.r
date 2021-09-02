# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GamePlay Class
#'
#' @field players 
#' @field result 
#' @field about 
#' @field coordinates 
#' @field team 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GamePlay <- R6::R6Class(
  'GamePlay',
  public = list(
    players = NULL,
    result = NULL,
    about = NULL,
    coordinates = NULL,
    team = NULL,
    initialize = function(players, result, about, coordinates, team){
      if (!missing(players)) {
        stopifnot(is.list(players), length(players) != 0)
        lapply(players, function(x) stopifnot(R6::is.R6(x)))
        self$players <- players
      }
      if (!missing(result)) {
        stopifnot(R6::is.R6(result))
        self$result <- result
      }
      if (!missing(about)) {
        stopifnot(R6::is.R6(about))
        self$about <- about
      }
      if (!missing(coordinates)) {
        stopifnot(R6::is.R6(coordinates))
        self$coordinates <- coordinates
      }
      if (!missing(team)) {
        stopifnot(R6::is.R6(team))
        self$team <- team
      }
    },
    toJSON = function() {
      GamePlayObject <- list()
      if (!is.null(self$players)) {
        GamePlayObject[['players']] <- lapply(self$players, function(x) x$toJSON())
      }
      if (!is.null(self$result)) {
        GamePlayObject[['result']] <- self$result$toJSON()
      }
      if (!is.null(self$about)) {
        GamePlayObject[['about']] <- self$about$toJSON()
      }
      if (!is.null(self$coordinates)) {
        GamePlayObject[['coordinates']] <- self$coordinates$toJSON()
      }
      if (!is.null(self$team)) {
        GamePlayObject[['team']] <- self$team$toJSON()
      }

      GamePlayObject
    },
    fromJSON = function(GamePlayJson) {
      GamePlayObject <- jsonlite::fromJSON(GamePlayJson)
      if (!is.null(GamePlayObject$players)) {
        self$players <- lapply(GamePlayObject$players, function(x) {
          playersObject <- GamePlayPlayers$new()
          playersObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          playersObject
        })
      }
      if (!is.null(GamePlayObject$result)) {
        resultObject <- GamePlayResult$new()
        resultObject$fromJSON(jsonlite::toJSON(GamePlayObject$result, auto_unbox = TRUE))
        self$result <- resultObject
      }
      if (!is.null(GamePlayObject$about)) {
        aboutObject <- GamePlayAbout$new()
        aboutObject$fromJSON(jsonlite::toJSON(GamePlayObject$about, auto_unbox = TRUE))
        self$about <- aboutObject
      }
      if (!is.null(GamePlayObject$coordinates)) {
        coordinatesObject <- GamePlayCoordinates$new()
        coordinatesObject$fromJSON(jsonlite::toJSON(GamePlayObject$coordinates, auto_unbox = TRUE))
        self$coordinates <- coordinatesObject
      }
      if (!is.null(GamePlayObject$team)) {
        teamObject <- GamePlayTeam$new()
        teamObject$fromJSON(jsonlite::toJSON(GamePlayObject$team, auto_unbox = TRUE))
        self$team <- teamObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "players": [%s],
           "result": %s,
           "about": %s,
           "coordinates": %s,
           "team": %s
        }',
        lapply(self$players, function(x) paste(x$toJSON(), sep=",")),
        self$result$toJSON(),
        self$about$toJSON(),
        self$coordinates$toJSON(),
        self$team$toJSON()
      )
    },
    fromJSONString = function(GamePlayJson) {
      GamePlayObject <- jsonlite::fromJSON(GamePlayJson)
      self$players <- lapply(GamePlayObject$players, function(x) GamePlayPlayers$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      GamePlayResultObject <- GamePlayResult$new()
      self$result <- GamePlayResultObject$fromJSON(jsonlite::toJSON(GamePlayObject$result, auto_unbox = TRUE))
      GamePlayAboutObject <- GamePlayAbout$new()
      self$about <- GamePlayAboutObject$fromJSON(jsonlite::toJSON(GamePlayObject$about, auto_unbox = TRUE))
      GamePlayCoordinatesObject <- GamePlayCoordinates$new()
      self$coordinates <- GamePlayCoordinatesObject$fromJSON(jsonlite::toJSON(GamePlayObject$coordinates, auto_unbox = TRUE))
      GamePlayTeamObject <- GamePlayTeam$new()
      self$team <- GamePlayTeamObject$fromJSON(jsonlite::toJSON(GamePlayObject$team, auto_unbox = TRUE))
    }
  )
)
