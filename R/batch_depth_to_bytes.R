#' Convert postage batch depth to bytes
#'
#' Function converts postage batch depth into more human readable units of byte multiples.
#'
#' @returns Returns value in specified multiples of bytes.
#'
#' @param depth Depth of the postage batch.
#' @param scale_in Scale to convert to - "GB" or "TB" for Gigabytes and Terabytes.
#'
#' @export
batch_depth_to_bytes <- function (depth, scale_in = "GB") {
  # TODO check if depth is a valid whole number
  if (scale_in == "GB") {factor <- 1024*1024*1024}
  if (scale_in == "TB") {factor <- 1024*1024*1024*1024}

  storage <- 2^(depth)*4096 / (factor)
  return(storage)
}
