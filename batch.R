


build_url <- function( GID )
{
  KEY <- "1RoiO9bfpbXowprWdZrgtYXG9_WuK3NFemwlvDGdym7E"
  url <- paste0( "https://docs.google.com/spreadsheets/d/", KEY, "/export?gid=", GID, "&format=csv" )
  return( url )
}

library(markdown)

## 2020 REPORT
url.2020 <- "https://docs.google.com/spreadsheets/d/1RoiO9bfpbXowprWdZrgtYXG9_WuK3NFemwlvDGdym7E/export?gid=1335284952&format=csv"
rmarkdown::render( input='salary-report.rmd', 
                   output_file = "ASU-2020-Salary-Report.HTML",
                   params = list( url = url.2020 ) )

## 2019 REPORT 
url.2019 <- "https://docs.google.com/spreadsheets/d/1RoiO9bfpbXowprWdZrgtYXG9_WuK3NFemwlvDGdym7E/export?gid=1948400967&format=csv"
rmarkdown::render( input='salary-report.rmd', 
                   output_file = "ASU-2019-Salary-Report.HTML",
                   params = list( url = url.2019 ) )

## 2018 REPORT
url.2018 <- build_url( GID="169937930" )
rmarkdown::render( input='salary-report.rmd', 
                   output_file = "ASU-2018-Salary-Report.html",
                   params = list( url = url.2018 ) )

## 2017 REPORT
url.2017 <- build_url( GID="1505080523" )
rmarkdown::render( input='salary-report.rmd', 
                   output_file = "ASU-2017-Salary-Report.html",
                   params = list( url = url.2017 ) )

## 2016 REPORT
url.2016 <- build_url( GID="873598574" )
rmarkdown::render( input='salary-report.rmd', 
                   output_file = "ASU-2016-Salary-Report.html",
                   params = list( url = url.2016 ) )

