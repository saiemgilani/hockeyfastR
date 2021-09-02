# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' TeamNextGameScheduleTeamsAwayLeagueRecord Class
#'
#' @field wins 
#' @field losses 
#' @field ot 
#' @field type 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamNextGameScheduleTeamsAwayLeagueRecord <- R6::R6Class(
  'TeamNextGameScheduleTeamsAwayLeagueRecord',
  public = list(
    wins = NULL,
    losses = NULL,
    ot = NULL,
    type = NULL,
    initialize = function(wins, losses, ot, type){
      if (!missing(wins)) {
        stopifnot(is.numeric(wins), length(wins) == 1)
        stopifnot(R6::is.R6(wins))
        self$wins <- wins
      }
      if (!missing(losses)) {
        stopifnot(is.numeric(losses), length(losses) == 1)
        stopifnot(R6::is.R6(losses))
        self$losses <- losses
      }
      if (!missing(ot)) {
        stopifnot(is.numeric(ot), length(ot) == 1)
        stopifnot(R6::is.R6(ot))
        self$ot <- ot
      }
      if (!missing(type)) {
        stopifnot(is.character(type), length(type) == 1)
        self$type <- type
      }
    },
    toJSON = function() {
      TeamNextGameScheduleTeamsAwayLeagueRecordObject <- list()
      if (!is.null(self$wins)) {
        TeamNextGameScheduleTeamsAwayLeagueRecordObject[['wins']] <- self$wins$toJSON()
      }
      if (!is.null(self$losses)) {
        TeamNextGameScheduleTeamsAwayLeagueRecordObject[['losses']] <- self$losses$toJSON()
      }
      if (!is.null(self$ot)) {
        TeamNextGameScheduleTeamsAwayLeagueRecordObject[['ot']] <- self$ot$toJSON()
      }
      if (!is.null(self$type)) {
        TeamNextGameScheduleTeamsAwayLeagueRecordObject[['type']] <- self$type
      }

      TeamNextGameScheduleTeamsAwayLeagueRecordObject
    },
    fromJSON = function(TeamNextGameScheduleTeamsAwayLeagueRecordJson) {
      TeamNextGameScheduleTeamsAwayLeagueRecordObject <- jsonlite::fromJSON(TeamNextGameScheduleTeamsAwayLeagueRecordJson)
      if (!is.null(TeamNextGameScheduleTeamsAwayLeagueRecordObject$wins)) {
        winsObject <- BigDecimal$new()
        winsObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$wins, auto_unbox = TRUE))
        self$wins <- winsObject
      }
      if (!is.null(TeamNextGameScheduleTeamsAwayLeagueRecordObject$losses)) {
        lossesObject <- BigDecimal$new()
        lossesObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$losses, auto_unbox = TRUE))
        self$losses <- lossesObject
      }
      if (!is.null(TeamNextGameScheduleTeamsAwayLeagueRecordObject$ot)) {
        otObject <- BigDecimal$new()
        otObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$ot, auto_unbox = TRUE))
        self$ot <- otObject
      }
      if (!is.null(TeamNextGameScheduleTeamsAwayLeagueRecordObject$type)) {
        self$type <- TeamNextGameScheduleTeamsAwayLeagueRecordObject$type
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "wins": %s,
           "losses": %s,
           "ot": %s,
           "type": %s
        }',
        self$wins$toJSON(),
        self$losses$toJSON(),
        self$ot$toJSON(),
        self$type
      )
    },
    fromJSONString = function(TeamNextGameScheduleTeamsAwayLeagueRecordJson) {
      TeamNextGameScheduleTeamsAwayLeagueRecordObject <- jsonlite::fromJSON(TeamNextGameScheduleTeamsAwayLeagueRecordJson)
      BigDecimalObject <- BigDecimal$new()
      self$wins <- BigDecimalObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$wins, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$losses <- BigDecimalObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$losses, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$ot <- BigDecimalObject$fromJSON(jsonlite::toJSON(TeamNextGameScheduleTeamsAwayLeagueRecordObject$ot, auto_unbox = TRUE))
      self$type <- TeamNextGameScheduleTeamsAwayLeagueRecordObject$type
    }
  )
)
