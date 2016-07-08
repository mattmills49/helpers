#' select distinct combinations of multiple variables
#'
#' \code{select_distinct} is just a wrapper around the dplyr verbs
#' \code{distinct} and \code{select}. \code{select} will trim the variables
#' you don't want from the data frame and \code{distinct} will return only
#' the groupings of the variables that exist in the data. This is mainly
#' useful when you have multiple levels of data that is repeated for each row
#' in a data frame. Think a data frame containing the information on a school,
#' class, and student level. You can use \code{select_distinct} to get a data
#' frame of the classes and school combinations.
#'
#' @param ... the same parameters you would pass to select
#' @return a data frame containing the distinct combination of the variables
#' that were selected
#' @examples
#' select_distinct(mtcars, cyl, am)

select_distinct <- function(...){
  return(dplyr::distinct(dplyr::select(...)))
}
