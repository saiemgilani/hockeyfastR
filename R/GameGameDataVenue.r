# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GameGameDataVenue Class
#'
#' @field name 
#' @field link 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameGameDataVenue <- R6::R6Class(
  'GameGameDataVenue',
  public = list(
    name = NULL,
    link = NULL,
    initialize = function(name, link){
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
      GameGameDataVenueObject <- list()
      if (!is.null(self$name)) {
        GameGameDataVenueObject[['name']] <- self$name
      }
      if (!is.null(self$link)) {
        GameGameDataVenueObject[['link']] <- self$link
      }

      GameGameDataVenueObject
    },
    fromJSON = function(GameGameDataVenueJson) {
      GameGameDataVenueObject <- jsonlite::fromJSON(GameGameDataVenueJson)
      if (!is.null(GameGameDataVenueObject$name)) {
        self$name <- GameGameDataVenueObject$name
      }
      if (!is.null(GameGameDataVenueObject$link)) {
        self$link <- GameGameDataVenueObject$link
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "link": %s
        }',
        self$name,
        self$link
      )
    },
    fromJSONString = function(GameGameDataVenueJson) {
      GameGameDataVenueObject <- jsonlite::fromJSON(GameGameDataVenueJson)
      self$name <- GameGameDataVenueObject$name
      self$link <- GameGameDataVenueObject$link
    }
  )
)
