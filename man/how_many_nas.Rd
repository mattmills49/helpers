% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/how_many_nas.R
\name{how_many_nas}
\alias{how_many_nas}
\title{Find out how many missing values are in each column of a data frame}
\usage{
how_many_nas(x, p = F)
}
\arguments{
\item{x}{a data frame to examine}

\item{p}{a logical flag indicating if the results should be in percentages.
Defaults to \code{FALSE}}
}
\value{
a named vector with the column names as the names and the number
or percentage of missing values as the values
}
\description{
\code{how_many_nas} finds the number of missing values in the columns of a
data frame. You can also have it return the percentage of missing values
instead of the raw totals.
}
\examples{
set.seed(12345)
how_many_nas(mtcars)
how_many_nas(iris, p = T)

}

