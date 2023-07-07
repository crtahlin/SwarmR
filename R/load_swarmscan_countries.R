#' Load swarmscan countries data
#'
#' Loads data from swarmscan.io about countries from endpoint "https://api.swarmscan.io/v1/network/stats".
#'
#' @return Returns a data frame parsed from JSON response.
#'
#' @export
load_swarmscan_countries <- function () {
  swarmscan_countries <- GET(url = "https://api.swarmscan.io/v1/network/stats")
  swarmscan_countries <- parse_json(content(swarmscan_countries, as = "text"), simplifyVector = TRUE)
  return(swarmscan_countries)
}
