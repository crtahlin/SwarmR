#' Return first n characters of a string as string
#'
#' @param string The string to process.
#' @param n The number of characters to return.
#'
#' @return Returns first n characters as a string.
#'
#' @export
first_n_places <- function (string, n) {
  sub <- substr(string, 1, n)
  return(sub)
}
