#' Load staking swarmscan data
#'
#' Loads data about staking from swarmscan.io, using endpoint "https://api.swarmscan.io/v1/events/staking/stake-updated/dump".
#'
#' @returns Returns a dataframe.
#'
#' @export
load_swarmscan_staking <- function () {
  swarmscan_staking <- GET(url = "https://api.swarmscan.io/v1/events/staking/stake-updated/dump")
  swarmscan_staking <- parse_json(content(swarmscan_staking, as = "text"), simplifyVector = TRUE)
  return(swarmscan_staking)
}
