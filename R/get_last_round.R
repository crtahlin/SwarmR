#' Get last played redistribution round from Swarmscan
#'
#' Function that call the Swarmscan.io API to get a list of played rounds and
#' extracts the latest (last) played round.
#'
#' @returns Returns number of last (latest) played round
#'
#' @export
get_last_round <- function () {
  rounds <- GET(url = "https://api.swarmscan.io/v1/redistribution/rounds") # call API
  parsed_rounds <- parse_json(content(rounds, as = "text"), simplifyVector = TRUE)$rounds # parse rounds
  last_round <- parsed_rounds$roundNumber[1] # get last round

  # return last (latest) round
  return(last_round)
}
