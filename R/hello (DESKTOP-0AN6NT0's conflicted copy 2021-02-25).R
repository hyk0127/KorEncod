# sampleprob
#' @importFrom rvest html_text
#' @importFrom xml2 read_html
#' @param url sample URL from DART system
#' @export
sampleprob <- function(url = "http://dart.fss.or.kr/dsaf001/main.do?rcpNo=20200330003851") {
  result <- grepl("연결재무제표 주석", html_text(read_html(url)))
  return(result)
}
