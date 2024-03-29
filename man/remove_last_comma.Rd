% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{remove_last_comma}
\alias{remove_last_comma}
\title{Fix comma-separated character grammar}
\usage{
remove_last_comma(string_vect, conj = "and")
}
\arguments{
\item{string_vect}{a character type with commas}

\item{conj}{character indicating the conjunction: "or" or "and"}
}
\value{
cleaned up character object
}
\description{
Goal of this function is to take a string like a, b, c and return a, b, and c.
}
\examples{
# Print "a, b, and c"
remove_last_comma(c("a, b, c"))
# "a, b, or c"
remove_last_comma(c("a, b, c"), conj = "or")
}
