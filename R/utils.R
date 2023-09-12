#' Fix comma-separated character grammar
#'
#' Goal of this function is to take a string like a, b, c and return a, b, and c.
#'
#' @param string_vect a character type with commas
#' @param conj character indicating the conjunction: "or" or "and"
#'
#' @return cleaned up character object
#' @export
#'
#' @examples
#' # Print "a, b, and c"
#' remove_last_comma(c("a, b, c"))
#' # "a, b, or c"
#' remove_last_comma(c("a, b, c"), conj = "or")
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


#' Fill null character object with blanks.
#'
#' Checks if there is actually a value, then runs `remove_last_comma`. Else,
#' creates a physical blank ("___").
#'
#' @param string_vect a character type, including one of length zero.
#' @param conj character indicating the conjunction: "or" or "and"
#'
#' @return a character object
#' @export
#'
#' @examples
#' # Print a blank if of length zero, for when the user doesn't specify
#' # something
#' multi_or_blank(character(0))
#' # Or, go ahead and run the remove_last_comma() function
#' multi_or_blank(c("a, b, c"))
multi_or_blank <- function(string_vect, conj = "and") {
  return(if (length(string_vect) == 0) {
    " ___ "
  } else {
    remove_last_comma(string_vect, conj = conj)
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
