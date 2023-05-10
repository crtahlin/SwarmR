#' Calculate postage batch price for depth and duration
#'
#' Function postage batch price in xBZZ, given the depth and duration.
#'
#' @returns Returns value in xBZZ.
#'
#' @param depth Depth of the postage batch.
#' @param duration_in_blocks Duration of the postage stamp in blocks on Gnosis chain.
#' Assuming each block happens on average in 5 sec on xDAI, there are approx. 60 * 60 * 24 / 5 = 17280 blocks per day.
#' @param price_per_chunk The price of storing one chunk for one block, in BZZ (PLUR).
#'
#' @export
batch_price_of_storage <- function (depth,
                                    duration_in_blocks = 17280,
                                    price_per_chunk) {
  total_price <- 2 ^ (stamp_depth) * (duration_in_blocks) * (price_per_chunk)

  return(total_price)
}
