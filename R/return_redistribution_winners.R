#' Get redistribution winners data from Swarmscan
#'
#' Uses endpoint GET(url = "https://api.swarmscan.io/v1/redistribution/rounds"), a paginated endpoint. Iterates in 10 rounds increments.
#'
#'
#' @param startRound Which round to start with; deafaults to 168089 which is the first recorder round (?).
#' @param endRound Which round to end with.
#'
#' @returns Returns a data frame of results with winners.
#'
#' @export
return_redistribution_winners <- function (startRound = 168089, endRound) {
  result <- data.frame()

  for (round in  c(seq(startRound, endRound, 10), endRound)) {
    redistributionDataBlock <- GET(url = paste0("https://api.swarmscan.io/v1/redistribution/rounds?start=", round))
    redistributionDataBlockParsed <- parse_json(content(redistributionDataBlock, as = "text"), simplifyVector = TRUE)
    # browser()
    eventsData <- redistributionDataBlockParsed$rounds$events # extract the data frame
    # loop through the data frame, looking for claims
    for( i in (1 : length(eventsData))) {
      # browser()
      # print(i)
      if (!any(eventsData[[i]]$type=="claim transaction")) {next}
      tmp1 <- eventsData[[i]][eventsData[[i]]$type=="claim transaction", c("blockNumber", "blockTime", "roundNumber", "rewardAmount", "rewardFrom", "rewardTo")]
      tmp2 <- eventsData[[i]][eventsData[[i]]$type=="claim transaction", c("winner")]
      tmp <- cbind(tmp1, as.data.frame(tmp2))
      rownames(tmp) <- tmp$roundNumber

      # print(tmp$roundNumber)

      if (exists("result")) {
        result <- bind_rows(result, tmp)} else { # rbind only if it already exists, else start anew
          result <- tmp
        }
    }
  }
  result <- unique(result)

  return(result)
}
