% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{vote_result}
\alias{vote_result}
\title{Roll call vote results for vote ids 15404, 15405, and 15406}
\format{
A list with one vote per element

\describe{
\item{response_date}{Date of data retrieval}
\item{version}{Data version from the API}
\item{vote_id}{Id of vote}
\item{mp_id}{MP id}
\item{party_id}{Party id}
\item{vote}{Vote: for, mot (against), ikke_tilstede (absent)}
\item{permanent_sub_for}{Id of the MP originally holding the seat, if the substitute is permanent}
\item{sub_for}{Id of the MP originally holding the seat}
}
}
\source{
\url{https://data.stortinget.no/eksport/voteringsresultat?voteringid=15404},
\url{https://data.stortinget.no/eksport/voteringsresultat?voteringid=15405},
\url{https://data.stortinget.no/eksport/voteringsresultat?voteringid=15406}
}
\usage{
vote_result
}
\description{
A dataset containing all personal votes for votes
15404, 15405, and 15406 in \emph{Stortinget}
}
\keyword{datasets}
