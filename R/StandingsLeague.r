# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' StandingsLeague Class
#'
#' @field id 
#' @field name 
#' @field link 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandingsLeague <- R6::R6Class(
  'StandingsLeague',
  public = list(
    id = NULL,
    name = NULL,
    link = NULL,
    initialize = function(id, name, link){
      if (!missing(id)) {
        stopifnot(is.numeric(id), length(id) == 1)
        stopifnot(R6::is.R6(id))
        self$id <- id
      }
      if (!missing(name)) {
        stopifnot(is.character(name), length(name) == 1)
        self$name <- name
      }
      if (!missing(link)) {
        stopifnot(is.character(link), length(link) == 1)
        self$link <- link
      }
    },
    toJSON = function() {
      StandingsLeagueObject <- list()
      if (!is.null(self$id)) {
        StandingsLeagueObject[['id']] <- self$id$toJSON()
      }
      if (!is.null(self$name)) {
        StandingsLeagueObject[['name']] <- self$name
      }
      if (!is.null(self$link)) {
        StandingsLeagueObject[['link']] <- self$link
      }

      StandingsLeagueObject
    },
    fromJSON = function(StandingsLeagueJson) {
      StandingsLeagueObject <- jsonlite::fromJSON(StandingsLeagueJson)
      if (!is.null(StandingsLeagueObject$id)) {
        idObject <- BigDecimal$new()
        idObject$fromJSON(jsonlite::toJSON(StandingsLeagueObject$id, auto_unbox = TRUE))
        self$id <- idObject
      }
      if (!is.null(StandingsLeagueObject$name)) {
        self$name <- StandingsLeagueObject$name
      }
      if (!is.null(StandingsLeagueObject$link)) {
        self$link <- StandingsLeagueObject$link
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s,
           "link": %s
        }',
        self$id$toJSON(),
        self$name,
        self$link
      )
    },
    fromJSONString = function(StandingsLeagueJson) {
      StandingsLeagueObject <- jsonlite::fromJSON(StandingsLeagueJson)
      BigDecimalObject <- BigDecimal$new()
      self$id <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsLeagueObject$id, auto_unbox = TRUE))
      self$name <- StandingsLeagueObject$name
      self$link <- StandingsLeagueObject$link
    }
  )
)
