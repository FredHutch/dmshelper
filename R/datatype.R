#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
datatype_comment <- function(input) {
  if (input$datatype_comment != "")
    dt_comment <-
      paste0("<font color='OA799A'>",
             input$datatype_comment,
             "</font>"
      )
  else {
    dt_comment <- ""
  }
  return(dt_comment)
}
