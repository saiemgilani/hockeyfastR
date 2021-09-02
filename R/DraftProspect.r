# NHL API
#
# Documenting the publicly accessible portions of the NHL API.
#
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' DraftProspect Class
#'
#' @field id 
#' @field fullName 
#' @field link 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DraftProspect <- R6::R6Class(
  'DraftProspect',
  public = list(
    id = NULL,
    fullName = NULL,
    link = NULL,
    initialize = function(id, fullName, link){
      if (!missing(id)) {
        stopifnot(is.numeric(id), length(id) == 1)
        stopifnot(R6::is.R6(id))
        self$id <- id
      }
      if (!missing(fullName)) {
        stopifnot(is.character(fullName), length(fullName) == 1)
        self$fullName <- fullName
      }
      if (!missing(link)) {
        stopifnot(is.character(link), length(link) == 1)
        self$link <- link
      }
    },
    toJSON = function() {
      DraftProspectObject <- list()
      if (!is.null(self$id)) {
        DraftProspectObject[['id']] <- self$id$toJSON()
      }
      if (!is.null(self$fullName)) {
        DraftProspectObject[['fullName']] <- self$fullName
      }
      if (!is.null(self$link)) {
        DraftProspectObject[['link']] <- self$link
      }

      DraftProspectObject
    },
    fromJSON = function(DraftProspectJson) {
      DraftProspectObject <- jsonlite::fromJSON(DraftProspectJson)
      if (!is.null(DraftProspectObject$id)) {
        idObject <- BigDecimal$new()
        idObject$fromJSON(jsonlite::toJSON(DraftProspectObject$id, auto_unbox = TRUE))
        self$id <- idObject
      }
      if (!is.null(DraftProspectObject$fullName)) {
        self$fullName <- DraftProspectObject$fullName
      }
      if (!is.null(DraftProspectObject$link)) {
        self$link <- DraftProspectObject$link
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "fullName": %s,
           "link": %s
        }',
        self$id$toJSON(),
        self$fullName,
        self$link
      )
    },
    fromJSONString = function(DraftProspectJson) {
      DraftProspectObject <- jsonlite::fromJSON(DraftProspectJson)
      BigDecimalObject <- BigDecimal$new()
      self$id <- BigDecimalObject$fromJSON(jsonlite::toJSON(DraftProspectObject$id, auto_unbox = TRUE))
      self$fullName <- DraftProspectObject$fullName
      self$link <- DraftProspectObject$link
    }
  )
)
