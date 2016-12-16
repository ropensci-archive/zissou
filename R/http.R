zs_GET <- function(url, query, ...) {
  cli <- crul::HttpClient$new(url = url, opts = list(...))
  res <- cli$get(query = query)
  res$parse()
}

zs_csv <- function(url, path, ...) {
  cli <- crul::HttpClient$new(url = url)
  res <- cli$get(disk = path, ...)
  res$content
}



# 'SELECT+CsquareCode+FROM+hspec_95+WHERE+Probability+%3E+0+AND+Probability+%3C+0.2++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_95+WHERE+Probability+%3E%3D+0.2+AND+Probability+%3C+0.4++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_95+WHERE+Probability+%3E%3D+0.4+AND+Probability+%3C+0.6++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_95+WHERE+Probability+%3E%3D+0.6+AND+Probability+%3C+0.8++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_95+WHERE+Probability+%3E%3D+0.8+AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1'
#
# xx <- 'SELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+>+0+AND+Probability+<+0.2++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+>%3D+0.2+AND+Probability+<+0.4++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+>%3D+0.4+AND+Probability+<+0.6++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+>%3D+0.6+AND+Probability+<+0.8++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+>%3D+0.8+AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1'
# 'http://www.aquamaps.org/CreateCSV.php?user_session=1&SpecID=Fis-22975&sql_master=SELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+%3E+0+AND+Probability+%3C+0.2++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+%3E%3D+0.2+AND+Probability+%3C+0.4++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+%3E%3D+0.4+AND+Probability+%3C+0.6++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+%3E%3D+0.6+AND+Probability+%3C+0.8++AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1%7CSELECT+CsquareCode+FROM+hspec_24+WHERE+Probability+%3E%3D+0.8+AND+FAOAreaYN%3D1+AND+BoundBoxYN%3D1&download_option=all'
#
# xml <- xml2::read_html(txt)
# xml_attr(xml_find_first(xml, "//a[contains(@href, \"CSV\")]"), "href")

# zs_get <- function(x) {
#   url <- file.path(zs_base(), "CreateCSV.php")
#   args <- list(
#     user_session = 1,
#     sql_master = sql_text,
#     download_option = 'all'
#   )
#   zs_GET(url, query = args)
# }

# gsub("\\+", " ", xx)
