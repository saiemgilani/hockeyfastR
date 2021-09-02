# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GameBoxscore Class
#'
#' @field teams 
#' @field officials 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameBoxscore <- R6::R6Class(
  'GameBoxscore',
  public = list(
    teams = NULL,
    officials = NULL,
    initialize = function(teams, officials){
      if (!missing(teams)) {
        stopifnot(R6::is.R6(teams))
        self$teams <- teams
      }
      if (!missing(officials)) {
        stopifnot(is.list(officials), length(officials) != 0)
        lapply(officials, function(x) stopifnot(R6::is.R6(x)))
        self$officials <- officials
      }
    },
    toJSON = function() {
      GameBoxscoreObject <- list()
      if (!is.null(self$teams)) {
        GameBoxscoreObject[['teams']] <- self$teams$toJSON()
      }
      if (!is.null(self$officials)) {
        GameBoxscoreObject[['officials']] <- lapply(self$officials, function(x) x$toJSON())
      }

      GameBoxscoreObject
    },
    fromJSON = function(GameBoxscoreJson) {
      GameBoxscoreObject <- jsonlite::fromJSON(GameBoxscoreJson)
      if (!is.null(GameBoxscoreObject$teams)) {
        teamsObject <- GameBoxscoreTeams$new()
        teamsObject$fromJSON(jsonlite::toJSON(GameBoxscoreObject$teams, auto_unbox = TRUE))
        self$teams <- teamsObject
      }
      if (!is.null(GameBoxscoreObject$officials)) {
        self$officials <- lapply(GameBoxscoreObject$officials, function(x) {
          officialsObject <- GameOfficial$new()
          officialsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          officialsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "teams": %s,
           "officials": [%s]
        }',
        self$teams$toJSON(),
        lapply(self$officials, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(GameBoxscoreJson) {
      GameBoxscoreObject <- jsonlite::fromJSON(GameBoxscoreJson)
      GameBoxscoreTeamsObject <- GameBoxscoreTeams$new()
      self$teams <- GameBoxscoreTeamsObject$fromJSON(jsonlite::toJSON(GameBoxscoreObject$teams, auto_unbox = TRUE))
      self$officials <- lapply(GameBoxscoreObject$officials, function(x) GameOfficial$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
