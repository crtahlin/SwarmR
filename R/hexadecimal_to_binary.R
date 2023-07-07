#' Convert any length hex number to binary, in string representation
#'
#' Takes a hex address of a Bee node and converts it to binary representation.
#'
#' @param hexNumber The hex address of a Bee node.
#'
#' @returns Returns a binary representation, as a string.
#'
#' @export
# goes through each char of a hex and converts it to binary, in char format
# R only support some 32 length binaries, so for 256 this seems like the way to do it
hexadecimal2binary <- function (hexNumber) {
  concataned_binary <- character()
  for (char in strsplit(hexNumber, "")[[1]]) {
    binary <- hex2bin(char) # converts to 32 bit representation
    binary <- substr(as.character(binary), 1, 4)
    # reverse to fit endianess (???)
    binary <- stringi::stri_reverse(binary)
    concataned_binary <- paste0(concataned_binary, binary)
  }
  return(concataned_binary)
}
