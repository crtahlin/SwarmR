#' Round up number of neighbourhoods needed to a nearest power of 2
#'
#' Function round up number of neighbourhoods needed, based on power of 2.
#'
#' @param minNhoodNumber Minimum number of neighbourhoods needed.
#'
#' @returns Returns a rounded up number of neighbourhoods.
#'
#' @export
numNbhoodsHigherThan <- function (minNhoodNumber) {
  for (i in 1:32) {
    if ( (2 ^ i) >  minNhoodNumber) {numNbhoodsHigherThan <- (2 ^ i)
    break
    }
  }
  return(numNbhoodsHigherThan)
}
