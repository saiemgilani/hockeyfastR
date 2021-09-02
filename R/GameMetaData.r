# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GameMetaData Class
#'
#' @field wait 
#' @field timeStamp 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GameMetaData <- R6::R6Class(
  'GameMetaData',
  public = list(
    wait = NULL,
    timeStamp = NULL,
    initialize = function(wait, timeStamp){
      if (!missing(wait)) {
        stopifnot(is.numeric(wait), length(wait) == 1)
        stopifnot(R6::is.R6(wait))
        self$wait <- wait
      }
      if (!missing(timeStamp)) {
        stopifnot(is.character(timeStamp), length(timeStamp) == 1)
        self$timeStamp <- timeStamp
      }
    },
    toJSON = function() {
      GameMetaDataObject <- list()
      if (!is.null(self$wait)) {
        GameMetaDataObject[['wait']] <- self$wait$toJSON()
      }
      if (!is.null(self$timeStamp)) {
        GameMetaDataObject[['timeStamp']] <- self$timeStamp
      }

      GameMetaDataObject
    },
    fromJSON = function(GameMetaDataJson) {
      GameMetaDataObject <- jsonlite::fromJSON(GameMetaDataJson)
      if (!is.null(GameMetaDataObject$wait)) {
        waitObject <- BigDecimal$new()
        waitObject$fromJSON(jsonlite::toJSON(GameMetaDataObject$wait, auto_unbox = TRUE))
        self$wait <- waitObject
      }
      if (!is.null(GameMetaDataObject$timeStamp)) {
        self$timeStamp <- GameMetaDataObject$timeStamp
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "wait": %s,
           "timeStamp": %s
        }',
        self$wait$toJSON(),
        self$timeStamp
      )
    },
    fromJSONString = function(GameMetaDataJson) {
      GameMetaDataObject <- jsonlite::fromJSON(GameMetaDataJson)
      BigDecimalObject <- BigDecimal$new()
      self$wait <- BigDecimalObject$fromJSON(jsonlite::toJSON(GameMetaDataObject$wait, auto_unbox = TRUE))
      self$timeStamp <- GameMetaDataObject$timeStamp
    }
  )
)
