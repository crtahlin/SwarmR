#' Generate neighbourhood overlay bits for some radius
#'
#' Generates all possible neighbourhod binary addresses for some storage radius, to use as factor variable.
#'
#' @param radius Storage radius.
#'
#' @returns Returns overlays.
#'
#' @export
generate_short_overlay <- function (radius) {
  radiusDecimal <- 2 ^ radius
  shortOverlays <- vector()
  for (i in 0:(radiusDecimal - 1)) {
    shortOverlays[i + 1] <- stringi::stri_reverse( first_n_places( paste0(as.character(as.numeric(intToBits(i))), collapse = ""), radius))
  }

  return(shortOverlays)
}
