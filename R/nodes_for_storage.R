#' Plot storage bought per day
#'
#' Function to plot a graph of storage paid for per day.
#'
#' @param storageAmount Amount of storage required, numeric.
#' @param unit The unit for the amount, "GB" or "TB"; defaults to "GB".
#' @param reserveSizeChunks The amount of chunks held in the reserve of a Bee node, defaults to cca. 4 Mio (2 ^ 22); leave it as it is unless you know what you are doing.
#' @param minNodesInNbhood How many nodes should be in each neighbourhood. Defaults to 4 (appropriate minimal redundancy, but assuming equal distribution)
#'
#' @returns Returns the number of neighbourhoods and nodes needed to ensure the amount of storage, based on parameters.
#'
#' @export
nodes_needed_for_storage <- function(storageAmount,
                                     unit = "GB",
                                     reserveSizeChunks = (2 ^ 22),
                                     minNodesInNbhood = 4 ) {
  if (unit == "GB") { storageAmountInBytes <- storageAmount* (2 ^ 30)} # convert GB to Bytes
  if (unit == "TB") { storageAmountInBytes <- storageAmount* (2 ^ 40)}
  reserveSizeBytes = reserveSizeChunks * 4096 # 4K bytes chunks
  neededMinNumNbhoods <- storageAmountInBytes / reserveSizeBytes
  neededNumNbhoods <- numNbhoodsHigherThan(neededMinNumNbhoods)
  neededNumNodes <- neededNumNbhoods * minNodesInNbhood

  return(c(nbhoods =  neededNumNbhoods, nodes =  neededNumNodes))
}
