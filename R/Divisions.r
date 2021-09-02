# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Divisions Class
#'
#' @field copyright 
#' @field teams 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Divisions <- R6::R6Class(
  'Divisions',
  public = list(
    copyright = NULL,
    teams = NULL,
    initialize = function(copyright, teams){
      if (!missing(copyright)) {
        stopifnot(is.character(copyright), length(copyright) == 1)
        self$copyright <- copyright
      }
      if (!missing(teams)) {
        stopifnot(is.list(teams), length(teams) != 0)
        lapply(teams, function(x) stopifnot(R6::is.R6(x)))
        self$teams <- teams
      }
    },
    toJSON = function() {
      DivisionsObject <- list()
      if (!is.null(self$copyright)) {
        DivisionsObject[['copyright']] <- self$copyright
      }
      if (!is.null(self$teams)) {
        DivisionsObject[['teams']] <- lapply(self$teams, function(x) x$toJSON())
      }

      DivisionsObject
    },
    fromJSON = function(DivisionsJson) {
      DivisionsObject <- jsonlite::fromJSON(DivisionsJson)
      if (!is.null(DivisionsObject$copyright)) {
        self$copyright <- DivisionsObject$copyright
      }
      if (!is.null(DivisionsObject$teams)) {
        self$teams <- lapply(DivisionsObject$teams, function(x) {
          teamsObject <- Division$new()
          teamsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          teamsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "copyright": %s,
           "teams": [%s]
        }',
        self$copyright,
        lapply(self$teams, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(DivisionsJson) {
      DivisionsObject <- jsonlite::fromJSON(DivisionsJson)
      self$copyright <- DivisionsObject$copyright
      self$teams <- lapply(DivisionsObject$teams, function(x) Division$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
