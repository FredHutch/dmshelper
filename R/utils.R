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


#' Title
#'
#' @param string_vect
#'
#' @return
#' @export
#'
#' @examples
multi_or_blank <- function(string_vect) {
  return(if (length(string_vect) == 0) {
    " ___ "
  } else {
    remove_last_comma(string_vect)
  })
}


#' Title
#'
#' @param num_input
#'
#' @return
#' @export
#'
#' @examples
check_numeric <- function(num_input, multiply = NULL) {
  return(if (!(is.numeric(num_input))) {
    " ___ "
  } else {
    if (is.numeric(multiply)) {
      num_input * multiply
    } else {
      num_input
    }
  })
}
