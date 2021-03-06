% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/limit_days.R
\name{limit_days}
\alias{limit_days}
\title{limit days in a data set}
\usage{
limit_days(data, no_days, election_data, pv, election, election_date, ...)
}
\arguments{
\item{data}{[\code{data.frame()}]\cr
data frame of a pollyvote object.}

\item{no_days}{[\code{integer(1)}]\cr
number of days before the election to return results for.}

\item{election_data}{[\code{data.frame()}]\cr
data frame containing the election results. The election date is included in the \code{date} coulmn.}

\item{pv}{[\code{pollyvote(1)}]\cr
pollyvote container to extract the \code{election} from.}

\item{election}{[\code{character(1)}]\cr
name of the election from \code{pv$election_result} to use.}

\item{election_date}{[\code{character(1)}]\cr
date of the election in the format '\%Y-\%m-\%d'. If not supplied, the date of the election has to be supplied in the election data.}

\item{...}{[\code{list()}]\cr
additional arguments, currently ignored.}
}
\value{
the data set limited to the number of days before the election.
}
\description{
internal function that handles missing values in the data frame of a pollyvote 
object. Different error handling arguments can be handed over.
If \code{election_data}, \code{election} and \code{election_date} are supplied to the function, than 
the election date which is supplied will be used
and resolving of the election date from
\code{get_election_result(pv, election_name = election)} will be ignored.
}
\details{
If limit_days is called like: limit_days(pv$data, no_days = 10, election_date = "Y-M-DD")
and if pv object is not supplied,
then election_date will not be validated whether it is existing election date in the pollyvote object.
Therefore, it is more safe for if pollyvote object is also supplied as an argument 
(e.g. limit_days(pv$data, no_days = 10, pv = pv, election_date = "Y-M-DD")).
}
