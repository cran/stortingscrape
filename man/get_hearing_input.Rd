% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_hearing_input.R
\name{get_hearing_input}
\alias{get_hearing_input}
\title{Retrieve the hearing input for a specified hearing}
\usage{
get_hearing_input(hearingid = NA, good_manners = 0)
}
\arguments{
\item{hearingid}{Character string indicating the id of the hearing to retrieve.}

\item{good_manners}{Integer. Seconds delay between calls when making multiple calls to the same function}
}
\value{
A data.frame the following variables:\tabular{ll}{
    \tab  \cr
   \strong{response_date} \tab Date of data retrieval \cr
   \strong{version} \tab Data version from the API \cr
   \strong{hearing_id} \tab Id of the hearing \cr
   \strong{hearing_type} \tab Type of hearing \cr
   \strong{committee_id} \tab Id of committee responsible for the hearing \cr
   \strong{hearing_input_date} \tab Date of receiving input \cr
   \strong{hearing_input_id} \tab Hearing input id \cr
   \strong{hearing_input_organization} \tab Organization giving input \cr
   \strong{hearing_input_text} \tab Full text of the hearing input \cr
   \strong{hearing_input_title} \tab Title of the hearing input \cr
}
}
\description{
A function for retrieving the hearing input for a specified hearing.
}
\examples{

\dontrun{
get_hearing_input(hearingid = 10004166)
}

}
\seealso{
\link{get_session_hearings} \link{get_hearing_program} \link{get_written_hearing_input}
}
