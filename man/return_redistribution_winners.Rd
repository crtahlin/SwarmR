% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/return_redistribution_winners.R
\name{return_redistribution_winners}
\alias{return_redistribution_winners}
\title{Get redistribution winners data from Swarmscan}
\usage{
return_redistribution_winners(startRound = 168089, endRound)
}
\arguments{
\item{startRound}{Which round to start with; deafaults to 168089 which is the first recorder round (?).}

\item{endRound}{Which round to end with.}
}
\value{
Returns a data frame of results with winners.
}
\description{
Uses endpoint GET(url = "https://api.swarmscan.io/v1/redistribution/rounds"), a paginated endpoint. Iterates in 10 rounds increments.
}
