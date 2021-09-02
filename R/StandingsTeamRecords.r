# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' StandingsTeamRecords Class
#'
#' @field team 
#' @field leagueRecord 
#' @field goalsAgainst 
#' @field goalsScored 
#' @field points 
#' @field divisionRank 
#' @field conferenceRank 
#' @field leagueRank 
#' @field wildCardRank 
#' @field row 
#' @field gamesPlayed 
#' @field streak 
#' @field lastUpdated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StandingsTeamRecords <- R6::R6Class(
  'StandingsTeamRecords',
  public = list(
    team = NULL,
    leagueRecord = NULL,
    goalsAgainst = NULL,
    goalsScored = NULL,
    points = NULL,
    divisionRank = NULL,
    conferenceRank = NULL,
    leagueRank = NULL,
    wildCardRank = NULL,
    row = NULL,
    gamesPlayed = NULL,
    streak = NULL,
    lastUpdated = NULL,
    initialize = function(team, leagueRecord, goalsAgainst, goalsScored, points, divisionRank, conferenceRank, leagueRank, wildCardRank, row, gamesPlayed, streak, lastUpdated){
      if (!missing(team)) {
        stopifnot(R6::is.R6(team))
        self$team <- team
      }
      if (!missing(leagueRecord)) {
        stopifnot(R6::is.R6(leagueRecord))
        self$leagueRecord <- leagueRecord
      }
      if (!missing(goalsAgainst)) {
        stopifnot(is.numeric(goalsAgainst), length(goalsAgainst) == 1)
        stopifnot(R6::is.R6(goalsAgainst))
        self$goalsAgainst <- goalsAgainst
      }
      if (!missing(goalsScored)) {
        stopifnot(is.numeric(goalsScored), length(goalsScored) == 1)
        stopifnot(R6::is.R6(goalsScored))
        self$goalsScored <- goalsScored
      }
      if (!missing(points)) {
        stopifnot(is.numeric(points), length(points) == 1)
        stopifnot(R6::is.R6(points))
        self$points <- points
      }
      if (!missing(divisionRank)) {
        stopifnot(is.character(divisionRank), length(divisionRank) == 1)
        self$divisionRank <- divisionRank
      }
      if (!missing(conferenceRank)) {
        stopifnot(is.character(conferenceRank), length(conferenceRank) == 1)
        self$conferenceRank <- conferenceRank
      }
      if (!missing(leagueRank)) {
        stopifnot(is.character(leagueRank), length(leagueRank) == 1)
        self$leagueRank <- leagueRank
      }
      if (!missing(wildCardRank)) {
        stopifnot(is.character(wildCardRank), length(wildCardRank) == 1)
        self$wildCardRank <- wildCardRank
      }
      if (!missing(row)) {
        stopifnot(is.numeric(row), length(row) == 1)
        stopifnot(R6::is.R6(row))
        self$row <- row
      }
      if (!missing(gamesPlayed)) {
        stopifnot(is.numeric(gamesPlayed), length(gamesPlayed) == 1)
        stopifnot(R6::is.R6(gamesPlayed))
        self$gamesPlayed <- gamesPlayed
      }
      if (!missing(streak)) {
        stopifnot(R6::is.R6(streak))
        self$streak <- streak
      }
      if (!missing(lastUpdated)) {
        stopifnot(is.character(lastUpdated), length(lastUpdated) == 1)
        self$lastUpdated <- lastUpdated
      }
    },
    toJSON = function() {
      StandingsTeamRecordsObject <- list()
      if (!is.null(self$team)) {
        StandingsTeamRecordsObject[['team']] <- self$team$toJSON()
      }
      if (!is.null(self$leagueRecord)) {
        StandingsTeamRecordsObject[['leagueRecord']] <- self$leagueRecord$toJSON()
      }
      if (!is.null(self$goalsAgainst)) {
        StandingsTeamRecordsObject[['goalsAgainst']] <- self$goalsAgainst$toJSON()
      }
      if (!is.null(self$goalsScored)) {
        StandingsTeamRecordsObject[['goalsScored']] <- self$goalsScored$toJSON()
      }
      if (!is.null(self$points)) {
        StandingsTeamRecordsObject[['points']] <- self$points$toJSON()
      }
      if (!is.null(self$divisionRank)) {
        StandingsTeamRecordsObject[['divisionRank']] <- self$divisionRank
      }
      if (!is.null(self$conferenceRank)) {
        StandingsTeamRecordsObject[['conferenceRank']] <- self$conferenceRank
      }
      if (!is.null(self$leagueRank)) {
        StandingsTeamRecordsObject[['leagueRank']] <- self$leagueRank
      }
      if (!is.null(self$wildCardRank)) {
        StandingsTeamRecordsObject[['wildCardRank']] <- self$wildCardRank
      }
      if (!is.null(self$row)) {
        StandingsTeamRecordsObject[['row']] <- self$row$toJSON()
      }
      if (!is.null(self$gamesPlayed)) {
        StandingsTeamRecordsObject[['gamesPlayed']] <- self$gamesPlayed$toJSON()
      }
      if (!is.null(self$streak)) {
        StandingsTeamRecordsObject[['streak']] <- self$streak$toJSON()
      }
      if (!is.null(self$lastUpdated)) {
        StandingsTeamRecordsObject[['lastUpdated']] <- self$lastUpdated
      }

      StandingsTeamRecordsObject
    },
    fromJSON = function(StandingsTeamRecordsJson) {
      StandingsTeamRecordsObject <- jsonlite::fromJSON(StandingsTeamRecordsJson)
      if (!is.null(StandingsTeamRecordsObject$team)) {
        teamObject <- PlayerCurrentTeam$new()
        teamObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$team, auto_unbox = TRUE))
        self$team <- teamObject
      }
      if (!is.null(StandingsTeamRecordsObject$leagueRecord)) {
        leagueRecordObject <- ScheduleGameTeamsHomeLeagueRecord$new()
        leagueRecordObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$leagueRecord, auto_unbox = TRUE))
        self$leagueRecord <- leagueRecordObject
      }
      if (!is.null(StandingsTeamRecordsObject$goalsAgainst)) {
        goalsAgainstObject <- BigDecimal$new()
        goalsAgainstObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$goalsAgainst, auto_unbox = TRUE))
        self$goalsAgainst <- goalsAgainstObject
      }
      if (!is.null(StandingsTeamRecordsObject$goalsScored)) {
        goalsScoredObject <- BigDecimal$new()
        goalsScoredObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$goalsScored, auto_unbox = TRUE))
        self$goalsScored <- goalsScoredObject
      }
      if (!is.null(StandingsTeamRecordsObject$points)) {
        pointsObject <- BigDecimal$new()
        pointsObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$points, auto_unbox = TRUE))
        self$points <- pointsObject
      }
      if (!is.null(StandingsTeamRecordsObject$divisionRank)) {
        self$divisionRank <- StandingsTeamRecordsObject$divisionRank
      }
      if (!is.null(StandingsTeamRecordsObject$conferenceRank)) {
        self$conferenceRank <- StandingsTeamRecordsObject$conferenceRank
      }
      if (!is.null(StandingsTeamRecordsObject$leagueRank)) {
        self$leagueRank <- StandingsTeamRecordsObject$leagueRank
      }
      if (!is.null(StandingsTeamRecordsObject$wildCardRank)) {
        self$wildCardRank <- StandingsTeamRecordsObject$wildCardRank
      }
      if (!is.null(StandingsTeamRecordsObject$row)) {
        rowObject <- BigDecimal$new()
        rowObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$row, auto_unbox = TRUE))
        self$row <- rowObject
      }
      if (!is.null(StandingsTeamRecordsObject$gamesPlayed)) {
        gamesPlayedObject <- BigDecimal$new()
        gamesPlayedObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$gamesPlayed, auto_unbox = TRUE))
        self$gamesPlayed <- gamesPlayedObject
      }
      if (!is.null(StandingsTeamRecordsObject$streak)) {
        streakObject <- StandingsStreak$new()
        streakObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$streak, auto_unbox = TRUE))
        self$streak <- streakObject
      }
      if (!is.null(StandingsTeamRecordsObject$lastUpdated)) {
        self$lastUpdated <- StandingsTeamRecordsObject$lastUpdated
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "team": %s,
           "leagueRecord": %s,
           "goalsAgainst": %s,
           "goalsScored": %s,
           "points": %s,
           "divisionRank": %s,
           "conferenceRank": %s,
           "leagueRank": %s,
           "wildCardRank": %s,
           "row": %s,
           "gamesPlayed": %s,
           "streak": %s,
           "lastUpdated": %s
        }',
        self$team$toJSON(),
        self$leagueRecord$toJSON(),
        self$goalsAgainst$toJSON(),
        self$goalsScored$toJSON(),
        self$points$toJSON(),
        self$divisionRank,
        self$conferenceRank,
        self$leagueRank,
        self$wildCardRank,
        self$row$toJSON(),
        self$gamesPlayed$toJSON(),
        self$streak$toJSON(),
        self$lastUpdated
      )
    },
    fromJSONString = function(StandingsTeamRecordsJson) {
      StandingsTeamRecordsObject <- jsonlite::fromJSON(StandingsTeamRecordsJson)
      PlayerCurrentTeamObject <- PlayerCurrentTeam$new()
      self$team <- PlayerCurrentTeamObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$team, auto_unbox = TRUE))
      ScheduleGameTeamsHomeLeagueRecordObject <- ScheduleGameTeamsHomeLeagueRecord$new()
      self$leagueRecord <- ScheduleGameTeamsHomeLeagueRecordObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$leagueRecord, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$goalsAgainst <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$goalsAgainst, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$goalsScored <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$goalsScored, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$points <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$points, auto_unbox = TRUE))
      self$divisionRank <- StandingsTeamRecordsObject$divisionRank
      self$conferenceRank <- StandingsTeamRecordsObject$conferenceRank
      self$leagueRank <- StandingsTeamRecordsObject$leagueRank
      self$wildCardRank <- StandingsTeamRecordsObject$wildCardRank
      BigDecimalObject <- BigDecimal$new()
      self$row <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$row, auto_unbox = TRUE))
      BigDecimalObject <- BigDecimal$new()
      self$gamesPlayed <- BigDecimalObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$gamesPlayed, auto_unbox = TRUE))
      StandingsStreakObject <- StandingsStreak$new()
      self$streak <- StandingsStreakObject$fromJSON(jsonlite::toJSON(StandingsTeamRecordsObject$streak, auto_unbox = TRUE))
      self$lastUpdated <- StandingsTeamRecordsObject$lastUpdated
    }
  )
)
