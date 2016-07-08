#' Prints samples from data structre
#'
#' \code{view} randomly samples from the input and prints the selected values
#' to the console. This helps see values that \code{head} and \code{tails} may
#' not reach.
#'
#' @param x A data frame or vector
#' @param n the number of rows or values to print
#' @return the printed values
#' @examples
#' view(letters)
#' view(mtcars, n = 4)
#'
#' @importFrom magrittr `%>%`

view <- function(x, n = 6) {
  if ("data.frame" %in% class(x)) {
    if (n > nrow(x)) {
      stop("n must be smaller than the number of rows in data frame")
    } else {
      x %>% dplyr::sample_n(n) %>% dplyr::tbl_df() %>% print
    }
  }
  else if (is.vector(x) & !is.list(x)) {
    if (n > length(x)) {
      stop("n must be smaller than the length of the vector")
    } else print(sample(x, size = n))
  } else stop("x must be a vector or data.frame")
}