# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GameBoxscoreTeamPlayers Class
#'
#' @field person 
#' @field jerseyNumber 
#' @field position 
#' @field stats 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameBoxscoreTeamPlayers <- R6::R6Class(
  'GameBoxscoreTeamPlayers',
  public = list(
    person = NULL,
    jerseyNumber = NULL,
    position = NULL,
    stats = NULL,
    initialize = function(person, jerseyNumber, position, stats){
      if (!missing(person)) {
        stopifnot(R6::is.R6(person))
        self$person <- person
      }
      if (!missing(jerseyNumber)) {
        stopifnot(is.character(jerseyNumber), length(jerseyNumber) == 1)
        self$jerseyNumber <- jerseyNumber
      }
      if (!missing(position)) {
        stopifnot(R6::is.R6(position))
        self$position <- position
      }
      if (!missing(stats)) {
        stopifnot(R6::is.R6(stats))
        self$stats <- stats
      }
    },
    toJSON = function() {
      GameBoxscoreTeamPlayersObject <- list()
      if (!is.null(self$person)) {
        GameBoxscoreTeamPlayersObject[['person']] <- self$person$toJSON()
      }
      if (!is.null(self$jerseyNumber)) {
        GameBoxscoreTeamPlayersObject[['jerseyNumber']] <- self$jerseyNumber
      }
      if (!is.null(self$position)) {
        GameBoxscoreTeamPlayersObject[['position']] <- self$position$toJSON()
      }
      if (!is.null(self$stats)) {
        GameBoxscoreTeamPlayersObject[['stats']] <- self$stats$toJSON()
      }

      GameBoxscoreTeamPlayersObject
    },
    fromJSON = function(GameBoxscoreTeamPlayersJson) {
      GameBoxscoreTeamPlayersObject <- jsonlite::fromJSON(GameBoxscoreTeamPlayersJson)
      if (!is.null(GameBoxscoreTeamPlayersObject$person)) {
        personObject <- GameBoxscoreTeamPlayersPerson$new()
        personObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$person, auto_unbox = TRUE))
        self$person <- personObject
      }
      if (!is.null(GameBoxscoreTeamPlayersObject$jerseyNumber)) {
        self$jerseyNumber <- GameBoxscoreTeamPlayersObject$jerseyNumber
      }
      if (!is.null(GameBoxscoreTeamPlayersObject$position)) {
        positionObject <- GameBoxscoreTeamPlayersPosition$new()
        positionObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$position, auto_unbox = TRUE))
        self$position <- positionObject
      }
      if (!is.null(GameBoxscoreTeamPlayersObject$stats)) {
        statsObject <- GameBoxscoreTeamPlayersStats$new()
        statsObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$stats, auto_unbox = TRUE))
        self$stats <- statsObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "person": %s,
           "jerseyNumber": %s,
           "position": %s,
           "stats": %s
        }',
        self$person$toJSON(),
        self$jerseyNumber,
        self$position$toJSON(),
        self$stats$toJSON()
      )
    },
    fromJSONString = function(GameBoxscoreTeamPlayersJson) {
      GameBoxscoreTeamPlayersObject <- jsonlite::fromJSON(GameBoxscoreTeamPlayersJson)
      GameBoxscoreTeamPlayersPersonObject <- GameBoxscoreTeamPlayersPerson$new()
      self$person <- GameBoxscoreTeamPlayersPersonObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$person, auto_unbox = TRUE))
      self$jerseyNumber <- GameBoxscoreTeamPlayersObject$jerseyNumber
      GameBoxscoreTeamPlayersPositionObject <- GameBoxscoreTeamPlayersPosition$new()
      self$position <- GameBoxscoreTeamPlayersPositionObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$position, auto_unbox = TRUE))
      GameBoxscoreTeamPlayersStatsObject <- GameBoxscoreTeamPlayersStats$new()
      self$stats <- GameBoxscoreTeamPlayersStatsObject$fromJSON(jsonlite::toJSON(GameBoxscoreTeamPlayersObject$stats, auto_unbox = TRUE))
    }
  )
)
