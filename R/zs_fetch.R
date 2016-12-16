#' Fetch Map Data (HSPEC)
#'
#' @export
#' @param x a url for a csv file. required.
#' @param path a path to write to. required.
#' @examples \dontrun{
#' tmpf <- tempfile(fileext = ".csv")
#' zs_fetch(
#'   x = "http://www.aquamaps.org/CSV/1481849181.csv",
#'   path = tmpf
#' )
#' }
zs_fetch <- function(x, path, ...) {
  process_csv(zs_csv(x, path, ...))
}

process_csv <- function(x) {
  # st_str <- paste0(
  #   as.character(
  #     read.table(x,
  #                skip = R.utils::countLines(x) - 1,
  #                stringsAsFactors = FALSE, sep = ","))[1:4], collapse = ",")
  st_str <- "Genus,Species,Center Lat,Center Long"
  start_read <- grep(st_str, readLines(x, n = 30, encoding = "UTF-8"))
  df <- tibble::as_data_frame(
    data.table::setDF(
      suppressWarnings(data.table::fread(
        x, skip = start_read - 1, header = TRUE,
        stringsAsFactors = FALSE, data.table = FALSE
      ))
    )
  )
  stats::setNames(
    df,
    gsub("\\.|\\s|-", "_", tolower(names(df)))
  )
}
