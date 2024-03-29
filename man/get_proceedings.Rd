% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_proceedings.R
\name{get_proceedings}
\alias{get_proceedings}
\title{All parliamentary proceedings}
\usage{
get_proceedings()
}
\value{
A list with three dataframes:
\enumerate{
\item \strong{$root} (only download meta data)\tabular{ll}{
    \tab  \cr
   \strong{response_date} \tab Date of data retrieval \cr
   \strong{version} \tab Data version from the API \cr
}

\item $proceedings (description of main proceeding categories)\tabular{ll}{
    \tab  \cr
   \strong{id} \tab Id of proceeding \cr
   \strong{name} \tab Name of proceeding \cr
}

\item $poceedings_steps (description of proceeding steps within each main category)\tabular{ll}{
    \tab  \cr
   \strong{id} \tab Id of proceeding step \cr
   \strong{name} \tab Name of proceeding step \cr
   \strong{step_number} \tab Order of proceeding steps \cr
   \strong{outdated} \tab Whether the step is outdated \cr
   \strong{main_id} \tab Id for proceeding type the step belongs to \cr
}

}
}
\description{
A function for retrieving all proceedings in Stortinget, both current and historical.
}
\examples{
\dontrun{

get_proceedings()

}

}
