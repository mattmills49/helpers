#' sample from groups of variables
#'
#' \code{sample_group} allows you to sample observations from groupings of
#' variables. This is useful for when you have multilevel data and would like
#' to sample from multiple levels at once. This makes exploratory plotting a
#' little easier.
#'
#' @param df the data.frame you are sampling from
#' @param ... the variables you would like to sample from
#' @param n the number of samples to return
#' @return a data frame containing the samples groupings
#' @export
#' @examples
#' sample_group(mtcars, cyl, am)

sample_group <- function(df, ..., n){
  return(suppressMessages(dplyr::inner_join(df, dplyr::sample_n(dplyr::distinct(dplyr::select(df, ...)), size = n))))
}
