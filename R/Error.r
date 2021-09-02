# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Error Class
#'
#' @field messageNumber 
#' @field message 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Error <- R6::R6Class(
  'Error',
  public = list(
    messageNumber = NULL,
    message = NULL,
    initialize = function(messageNumber, message){
      if (!missing(messageNumber)) {
        stopifnot(is.numeric(messageNumber), length(messageNumber) == 1)
        stopifnot(R6::is.R6(messageNumber))
        self$messageNumber <- messageNumber
      }
      if (!missing(message)) {
        stopifnot(is.character(message), length(message) == 1)
        self$message <- message
      }
    },
    toJSON = function() {
      ErrorObject <- list()
      if (!is.null(self$messageNumber)) {
        ErrorObject[['messageNumber']] <- self$messageNumber$toJSON()
      }
      if (!is.null(self$message)) {
        ErrorObject[['message']] <- self$message
      }

      ErrorObject
    },
    fromJSON = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
      if (!is.null(ErrorObject$messageNumber)) {
        messageNumberObject <- BigDecimal$new()
        messageNumberObject$fromJSON(jsonlite::toJSON(ErrorObject$messageNumber, auto_unbox = TRUE))
        self$messageNumber <- messageNumberObject
      }
      if (!is.null(ErrorObject$message)) {
        self$message <- ErrorObject$message
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "messageNumber": %s,
           "message": %s
        }',
        self$messageNumber$toJSON(),
        self$message
      )
    },
    fromJSONString = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
      BigDecimalObject <- BigDecimal$new()
      self$messageNumber <- BigDecimalObject$fromJSON(jsonlite::toJSON(ErrorObject$messageNumber, auto_unbox = TRUE))
      self$message <- ErrorObject$message
    }
  )
)
