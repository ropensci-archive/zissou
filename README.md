zissou
======



[![Build Status](https://travis-ci.org/ropenscilabs/zissou.svg?branch=master)](https://travis-ci.org/ropenscilabs/zissou)

`zissou` is an interface to Aquamaps

## Installation


```r
devtools::install_github("ropenscilabs/zissou")
```


```r
library("zissou")
```

## get a dataset


```r
tmpf <- tempfile(fileext = ".csv")
zs_fetch(
  x = "http://www.aquamaps.org/CSV/1481849181.csv",
  path = tmpf
)
#> # A tibble: 1,956 × 6
#>      genus     species center_lat center_long c_square_code
#>      <chr>       <chr>      <dbl>       <dbl>         <chr>
#> 1  Abralia astrosticta       7.25      118.75    1011:478:2
#> 2  Abralia astrosticta       7.75      118.75    1011:478:4
#> 3  Abralia astrosticta       8.75      117.75    1011:487:4
#> 4  Abralia astrosticta       8.25      118.75    1011:488:2
#> 5  Abralia astrosticta       8.75      119.75    1011:489:4
#> 6  Abralia astrosticta       9.25      117.75    1011:497:2
#> 7  Abralia astrosticta       9.25      118.25    1011:498:1
#> 8  Abralia astrosticta       9.75      118.75    1011:498:4
#> 9  Abralia astrosticta       9.25      119.75    1011:499:2
#> 10 Abralia astrosticta       0.25      120.25    1012:100:1
#> # ... with 1,946 more rows, and 1 more variables:
#> #   overall_probability <dbl>
```

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/zissou/issues).
* License: MIT
* Get citation information for `zissou` in R doing `citation(package = 'zissou')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
