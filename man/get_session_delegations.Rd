% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_session_delegations.R
\name{get_session_delegations}
\alias{get_session_delegations}
\title{Parliamentary delegations in specified session}
\usage{
get_session_delegations(sessionid = NA, good_manners = 0)
}
\arguments{
\item{sessionid}{Character string indicating the id of the parliamentary session to retrieve.}

\item{good_manners}{Integer. Seconds delay between calls when making multiple calls to the same function}
}
\value{
A data.frame with the following variables:\tabular{ll}{
    \tab  \cr
   \strong{response_date} \tab Date of data retrieval \cr
   \strong{version} \tab Data version from the API \cr
   \strong{id} \tab Delegation id \cr
   \strong{name} \tab Name of delegation \cr
   \strong{session_id} \tab Session id \cr
}
}
\description{
A function for retrieving delegations for a specified parliamentary session.
}
\examples{

\dontrun{

deleg <- get_session_delegations("2015-2016")
deleg

}

}
\seealso{
\link{get_session_committees} \link{get_all_committees}
}
