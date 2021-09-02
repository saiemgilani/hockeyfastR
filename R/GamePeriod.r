# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' GamePeriod Class
#'
#' @field periodType 
#' @field startTime 
#' @field endTime 
#' @field num 
#' @field ordinalNum 
#' @field home 
#' @field away 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GamePeriod <- R6::R6Class(
  'GamePeriod',
  public = list(
    periodType = NULL,
    startTime = NULL,
    endTime = NULL,
    num = NULL,
    ordinalNum = NULL,
    home = NULL,
    away = NULL,
    initialize = function(periodType, startTime, endTime, num, ordinalNum, home, away){
      if (!missing(periodType)) {
        stopifnot(is.character(periodType), length(periodType) == 1)
        self$periodType <- periodType
      }
      if (!missing(startTime)) {
        stopifnot(is.character(startTime), length(startTime) == 1)
        self$startTime <- startTime
      }
      if (!missing(endTime)) {
        stopifnot(is.character(endTime), length(endTime) == 1)
        self$endTime <- endTime
      }
      if (!missing(num)) {
        stopifnot(is.numeric(num), length(num) == 1)
        stopifnot(R6::is.R6(num))
        self$num <- num
      }
      if (!missing(ordinalNum)) {
        stopifnot(is.character(ordinalNum), length(ordinalNum) == 1)
        self$ordinalNum <- ordinalNum
      }
      if (!missing(home)) {
        stopifnot(R6::is.R6(home))
        self$home <- home
      }
      if (!missing(away)) {
        stopifnot(R6::is.R6(away))
        self$away <- away
      }
    },
    toJSON = function() {
      GamePeriodObject <- list()
      if (!is.null(self$periodType)) {
        GamePeriodObject[['periodType']] <- self$periodType
      }
      if (!is.null(self$startTime)) {
        GamePeriodObject[['startTime']] <- self$startTime
      }
      if (!is.null(self$endTime)) {
        GamePeriodObject[['endTime']] <- self$endTime
      }
      if (!is.null(self$num)) {
        GamePeriodObject[['num']] <- self$num$toJSON()
      }
      if (!is.null(self$ordinalNum)) {
        GamePeriodObject[['ordinalNum']] <- self$ordinalNum
      }
      if (!is.null(self$home)) {
        GamePeriodObject[['home']] <- self$home$toJSON()
      }
      if (!is.null(self$away)) {
        GamePeriodObject[['away']] <- self$away$toJSON()
      }

      GamePeriodObject
    },
    fromJSON = function(GamePeriodJson) {
      GamePeriodObject <- jsonlite::fromJSON(GamePeriodJson)
      if (!is.null(GamePeriodObject$periodType)) {
        self$periodType <- GamePeriodObject$periodType
      }
      if (!is.null(GamePeriodObject$startTime)) {
        self$startTime <- GamePeriodObject$startTime
      }
      if (!is.null(GamePeriodObject$endTime)) {
        self$endTime <- GamePeriodObject$endTime
      }
      if (!is.null(GamePeriodObject$num)) {
        numObject <- BigDecimal$new()
        numObject$fromJSON(jsonlite::toJSON(GamePeriodObject$num, auto_unbox = TRUE))
        self$num <- numObject
      }
      if (!is.null(GamePeriodObject$ordinalNum)) {
        self$ordinalNum <- GamePeriodObject$ordinalNum
      }
      if (!is.null(GamePeriodObject$home)) {
        homeObject <- GamePeriodHome$new()
        homeObject$fromJSON(jsonlite::toJSON(GamePeriodObject$home, auto_unbox = TRUE))
        self$home <- homeObject
      }
      if (!is.null(GamePeriodObject$away)) {
        awayObject <- GamePeriodAway$new()
        awayObject$fromJSON(jsonlite::toJSON(GamePeriodObject$away, auto_unbox = TRUE))
        self$away <- awayObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "periodType": %s,
           "startTime": %s,
           "endTime": %s,
           "num": %s,
           "ordinalNum": %s,
           "home": %s,
           "away": %s
        }',
        self$periodType,
        self$startTime,
        self$endTime,
        self$num$toJSON(),
        self$ordinalNum,
        self$home$toJSON(),
        self$away$toJSON()
      )
    },
    fromJSONString = function(GamePeriodJson) {
      GamePeriodObject <- jsonlite::fromJSON(GamePeriodJson)
      self$periodType <- GamePeriodObject$periodType
      self$startTime <- GamePeriodObject$startTime
      self$endTime <- GamePeriodObject$endTime
      BigDecimalObject <- BigDecimal$new()
      self$num <- BigDecimalObject$fromJSON(jsonlite::toJSON(GamePeriodObject$num, auto_unbox = TRUE))
      self$ordinalNum <- GamePeriodObject$ordinalNum
      GamePeriodHomeObject <- GamePeriodHome$new()
      self$home <- GamePeriodHomeObject$fromJSON(jsonlite::toJSON(GamePeriodObject$home, auto_unbox = TRUE))
      GamePeriodAwayObject <- GamePeriodAway$new()
      self$away <- GamePeriodAwayObject$fromJSON(jsonlite::toJSON(GamePeriodObject$away, auto_unbox = TRUE))
    }
  )
)
