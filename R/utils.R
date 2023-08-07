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
remove_last_comma <- function(string_vect, conj = "and") {
  if (length(string_vect) == 2) {
    string_ <- paste(string_vect, collapse = ", ")
    if (conj != "or") {
      out <- sub(",([^,]*)$", " and\\1", string_)
    } else {
      out <- sub(",([^,]*)$", " or\\1", string_)
    }
  } else {
    string_ <- paste(string_vect, collapse = ", ")
    if (conj != "or") {
      out <- sub(",([^,]*)$", ", and\\1", string_)
    } else {
      out <- sub(",([^,]*)$", ", or\\1", string_)
    }
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


#' Title
#'
#' @param string_chain
#' @param new_string
#'
#' @return
#' @export
#'
#' @examples
update_if_absent <- function(string_chain, new_string) {
  return(c(string_chain,
    if (new_string %in% string_chain) {
      ""
    } else {
      new_string
    }))
}


tally_strings <- function(df, string_chain, new_string) {

  if (new_string %in% string_chain) {
    df[(df$string == new_string), ]$count <-  df[(df$string == new_string), ]$count + 1
  } else {
    newrow <- nrow(df) + 1
    df[newrow, 1] <- new_string
    df[newrow, 2] <- 1
  }

  return(df)
}
