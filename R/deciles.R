#' returns the min, deciles, and max for a numeric vector
#'
#' \code{deciles} takes in a numeric vector and returns a named vector that
#' contains the min, 10%-90% percentiles, and the max. You can make sure NA
#' values are removed the the \code{na_log} parameter
#'
#' @param x a numeric or integer vector
#' @param na_log a logical value that indicates if NA values should be removed
#' @return a numeric vector with names for the corresponding value
#' @example deciles(1:100)

deciles <- function(x, na_log = F) {
  if (!is.vector(x) | is.list(x)) {
    stop("x must be a vector")
  } else if (c("character", "logical") %in% class(x)) {
    stop("x must be a numeric or integer vector")
  } else {
    v <- c(min(x, na.rm = na_log), quantile(x, probs = seq(.1, .9, .1), na.rm = na_log), max(x, na.rm = na_log))
    names(v)[c(1,11)] <- c("min", "max")
    return(v)
  }
}
