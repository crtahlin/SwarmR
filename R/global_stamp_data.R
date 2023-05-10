#' Load global stamp data from a Bee endpoint
#'
#' Function to load global stamp data from local Bee, debug API; prerequisite: a running local Bee.
#'
#' @returns Returns a data frame with data about stamps.
#' @importFrom httr GET
#' @importFrom jsonlite parse_json
#' @importFrom httr content
#'
#' @export
global_stamp_data <- function () {
  stamp_data <- GET(url = "http://localhost:1635/batches")
  stamp_data <- parse_json(content(stamp_data, as = "text"), simplifyVector = TRUE)
  return(stamp_data$batches)
}
