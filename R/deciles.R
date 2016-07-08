#' returns the min, deciles, and max for a numeric vector
#'
#' \code{deciles} takes in a numeric vector and returns a named vector that
#' contains the min, 10%-90% percentiles, and the max. Missing values are
#' always removed
#'
#' @param x a numeric or integer vector
#' @return a numeric vector with names for the corresponding decile
#' @example deciles(0:100)

deciles <- function(x) {
  if (!is.vector(x) | is.list(x)) {
    stop("x must be a vector")
  } else if (class(x) != "integer" && class(x) != "numeric") {
    stop("x must be a numeric or integer vector")
  } else if (length(x) <= 1) {
    stop("x must have more than one element")
  } else {
    v <- c(min(x, na.rm = T), quantile(x, probs = seq(.1, .9, .1), na.rm = T), max(x, na.rm = T))
    names(v)[c(1,11)] <- c("min", "max")
    return(v)
  }
}
