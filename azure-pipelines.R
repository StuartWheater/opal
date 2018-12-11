library(devtools)

devtools::check(error_on="never")
devtools::test(filter="datashield.")

quit(status=0)
