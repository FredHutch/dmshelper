#' Fix list grammar
#'
#' Goal of this function is to take a string like a, b, c and return a, b, and c.
#'
#' @param string_vect
#'
#' @return
#' @export
#'
#' @examples
remove_last_comma <- function(string_vect) {
  if (length(string_vect) == 2) {
    string_ <- paste(string_vect, collapse = ", ")
    out <- sub(",([^,]*)$", " and\\1", string_)
  } else {
    string_ <- paste(string_vect, collapse = ", ")
    out <- sub(",([^,]*)$", ", and\\1", string_)
  }

  return(out)
}
