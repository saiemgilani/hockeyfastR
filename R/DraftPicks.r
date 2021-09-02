# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' DraftPicks Class
#'
#' @field year 
#' @field round 
#' @field pickOverall 
#' @field pickInRound 
#' @field team 
#' @field prospect 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DraftPicks <- R6::R6Class(
  'DraftPicks',
  public = list(
    year = NULL,
    round = NULL,
    pickOverall = NULL,
    pickInRound = NULL,
    team = NULL,
    prospect = NULL,
    initialize = function(year, round, pickOverall, pickInRound, team, prospect){
      if (!missing(year)) {
        stopifnot(is.numeric(year), length(year) == 1)
        stopifnot(R6::is.R6(year))
        self$year <- year
      }
      if (!missing(round)) {
        stopifnot(is.character(round), length(round) == 1)
        self$round <- round
      }
      if (!missing(pickOverall)) {
        stopifnot(is.numeric(pickOverall), length(pickOverall) == 1)
        stopifnot(R6::is.R6(pickOverall))
        self$pickOverall <- pickOverall
      }
      if (!missing(pickInRound)) {
        stopifnot(is.numeric(pickInRound), length(pickInRound) == 1)
        stopifnot(R6::is.R6(pickInRound))
        self$pickInRound <- pickInRound
      }
      if (!missing(team)) {
        stopifnot(R6::is.R6(team))
        self$team <- team
      }
      if (!missing(prospect)) {
        stopifnot(R6::is.R6(prospect))
        self$prospect <- prospect
      }
    },
    toJSON = function() {
      DraftPicksObject <- list()
      if (!is.null(self$year)) {
        DraftPicksObject[['year']] <- self$year$toJSON()
      }
      if (!is.null(self$round)) {
        DraftPicksObject[['round']] <- self$round
      }
      if (!is.null(self$pickOverall)) {
        DraftPicksObject[['pickOverall']] <- self$pickOverall$toJSON()
      }
      if (!is.null(self$pickInRound)) {
        DraftPicksObject[['pickInRound']] <- self$pickInRound$toJSON()
      }
      if (!is.null(self$team)) {
        DraftPicksObject[['team']] <- self$team$toJSON()
      }
      if (!is.null(self$prospect)) {
        DraftPicksObject[['prospect']] <- self$prospect$toJSON()
      }

      DraftPicksObject
    },
    fromJSON = function(DraftPicksJson) {
      DraftPicksObject <- jsonlite::fromJSON(DraftPicksJson)
      if (!is.null(DraftPicksObject$year)) {
        yearObject <- BigDecimal$new()
        yearObject$fromJSON(jsonlite::toJSON(DraftPicksObject$year, auto_unbox = TRUE))
        self$year <- yearObject
      }
      if (!is.null(DraftPicksObject$round)) {
        self$round <- DraftPicksObject$round
      }
      if (!is.null(DraftPicksObject$pickOverall)) {
        pickOverallObject <- BigDecimal$new()
        pickOverallObject$fromJSON(jsonlite::toJSON(DraftPicksObject$pickOverall, auto_unbox = TRUE))
        self$pickOverall <- pickOverallObject
      }
      if (!is.null(DraftPicksObject$pickInRound)) {
        pickInRoundObject <- BigDecimal$new()
        pickInRoundObject$fromJSON(jsonlite::toJSON(DraftPicksObject$pickInRound, auto_unbox = TRUE))
        self$pickInRound <- pickInRoundObject
      }
      if (!is.null(DraftPicksObject$team)) {
        teamObject <- DraftTeam$new()
        teamObject$fromJSON(jsonlite::toJSON(DraftPicksObject$team, auto_unbox = TRUE))
        self$team <- teamObject
      }
      if (!is.null(DraftPicksObject$prospect)) {
        prospectObject <- DraftProspect$new()
        prospectObject$fromJSON(jsonlite::toJSON(DraftPicksObject$prospect, auto_unbox = TRUE))
        self$prospect <- prospectObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "year": %s,
           "round": %s,
           "pickOverall": %s,
           "pickInRound": %s,
           "team": %s,
           "prospect": %s
        }',
        self$year$toJSON(),
        self$round,
        self$pickOverall$toJSON(),
        self$pickInRound$toJSON(),
        self$team$toJSON(),
        self$prospect$toJSON()
      )
    },
    fromJSONString = function(DraftPicksJson) {
      DraftPicksObject <- jsonlite::fromJSON(DraftPicksJson)
      BigDecimalObject <- BigDecimal$new()
      self$year <- BigDecimalObject$fromJSON(jsonlite::toJSON(DraftPicksObject$year, auto_unbox = TRUE))
      self$round <- DraftPicksObject$round
      BigDecimalObject <- BigDecimal$new()
      self$pickOverall <- BigDecimalObject$fromJSON(jsonlite::toJSON(DraftPicksObject$pickOverall, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$pickInRound <- BigDecimalObject$fromJSON(jsonlite::toJSON(DraftPicksObject$pickInRound, auto_unbox = TRUE))
      DraftTeamObject <- DraftTeam$new()
      self$team <- DraftTeamObject$fromJSON(jsonlite::toJSON(DraftPicksObject$team, auto_unbox = TRUE))
      DraftProspectObject <- DraftProspect$new()
      self$prospect <- DraftProspectObject$fromJSON(jsonlite::toJSON(DraftPicksObject$prospect, auto_unbox = TRUE))
    }
  )
)
