#' Convert hex to binary function
#'
#' NOT THE ONE TO USE DIRECTLY! a helper function
#' @export
hex2bin <- function (hexnumber) {
  # make hex into decimal
  decimalnumber <- strtoi(hexnumber, 16L)

  # make decimal into binary
  binarynumber <- dec2bin(decimalnumber)

  # return binary number
  return(binarynumber)
}
