#' Convert decimal to binary
#'
#' Helper function, as per https://stackoverflow.com/questions/6614283/converting-decimal-to-binary-in-r
#' without rev()
#' @export
dec2bin <- function(x) {
  # paste(as.integer(intToBits(x)), collapse = "")
  decimal <- vector()
  i = 1
  for (a in x) {
    decimal[i] <- paste(as.integer(intToBits(a)), collapse = "")
    i = i + 1
    # print(decimal)
  }
  return (decimal)
}
