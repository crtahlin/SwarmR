#' Load swarmscan nodes data
#'
#' Loads swarmscan.io data about nodes on the network, from the "https://api.swarmscan.io/v1/network/dump" endpoint.
#'
#' @returns Returns a data frame parsed from the JSON response.
#'
#' @export
load_swarmscan_data <- function( ) {
  swarmscan_dump <- GET(url = "https://api.swarmscan.io/v1/network/dump")
  swarmscan_data <- parse_json(content(swarmscan_dump, as = "text"), simplifyVector = TRUE)
  return(swarmscan_data)
}
