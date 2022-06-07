#' Retrieve the hearing input for a specified hearing
#' 
#' @description A function for retrieving the hearing input for a specified hearing.
#' 
#' @usage get_hearing_input(hearingid = NA, good_manners = 0)
#' 
#' @param hearingid Character string indicating the id of the hearing to retrieve.
#' @param good_manners Integer. Seconds delay between calls when making multiple calls to the same function
#' 
#' @return A data.frame the following variables:
#' 
#'    |                                |                                             |
#'    |:-------------------------------|:--------------------------------------------|
#'    | **response_date**              | Date of data retrieval                      |
#'    | **version**                    | Data version from the API                   |
#'    | **hearing_id**                 | Id of the hearing                           |
#'    | **hearing_type**               | Type of hearing                             |
#'    | **committee_id**               | Id of committee responsible for the hearing |
#'    | **hearing_input_date**         | Date of receiving input                     |
#'    | **hearing_input_id**           | Hearing input id                            |
#'    | **hearing_input_organization** | Organization giving input                   |
#'    | **hearing_input_text**         | Full text of the hearing input              |
#'    | **hearing_input_title**        | Title of the hearing input                  |
#'    
#' @md
#' 
#' @seealso [get_session_hearings] [get_hearing_program] [get_written_hearing_input]
#' 
#' 
#' @examples 
#' 
#' \dontrun{
#' get_hearing_input(hearingid = 10004166)
#' }
#' 
#' @import rvest parallel
#' @export
#' 



get_hearing_input <- function(hearingid = NA, good_manners = 0){
  
  url <- paste0("https://data.stortinget.no/eksport/horingsinnspill?horingid=", hearingid)
  
  base <- GET(url)
  
  resp <- http_type(base)
  if(resp != "text/xml") stop(paste0("Response of ", url, " is not text/xml."), call. = FALSE)
  
  status <- http_status(base)
  if(status$category != "Success") stop(paste0("Response of ", url, " returned as '", status$message, "'"), call. = FALSE)
  
  tmp <- read_html(base)
  
  
  if(html_text(html_elements(tmp, "horingsinnspill_liste")) == ""){
    tmp2 <- data.frame(response_date = tmp %>% html_elements("horingsinnspill_oversikt > respons_dato_tid") %>% html_text(),
                       version = tmp %>% html_elements("horingsinnspill_oversikt > versjon") %>% html_text(),
                       hearing_id = tmp %>% html_elements("horingsinnspill_oversikt > horing_id") %>% html_text(),
                       hearing_type = tmp %>% html_elements("horingsinnspill_oversikt > horing_type") %>% html_text(),
                       committee_id = tmp %>% html_elements("komite > id") %>% html_text(),
                       hearing_input_date = NA,
                       hearing_input_id = NA,
                       hearing_input_organization = NA,
                       hearing_input_text = NA,
                       hearing_input_title = NA)
    
  } else {
    
    tmp2 <- data.frame(response_date = tmp %>% html_elements("horingsinnspill_oversikt > respons_dato_tid") %>% html_text(),
                       version = tmp %>% html_elements("horingsinnspill_oversikt > versjon") %>% html_text(),
                       hearing_id = tmp %>% html_elements("horingsinnspill_oversikt > horing_id") %>% html_text(),
                       hearing_type = tmp %>% html_elements("horingsinnspill_oversikt > horing_type") %>% html_text(),
                       committee_id = tmp %>% html_elements("komite > id") %>% html_text(),
                       hearing_input_date = tmp %>% html_elements("horingsinnspill > dato") %>% html_text(),
                       hearing_input_id = tmp %>% html_elements("horingsinnspill > id") %>% html_text(),
                       hearing_input_organization = tmp %>% html_elements("horingsinnspill > organisasjon") %>% html_text(),
                       hearing_input_text = tmp %>% html_elements("horingsinnspill > tekst") %>% html_text(),
                       hearing_input_title = tmp %>% html_elements("horingsinnspill > tittel") %>% html_text())
  }
  
  
  
  Sys.sleep(good_manners)
  
  return(tmp2)
  
}

