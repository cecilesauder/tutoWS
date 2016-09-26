if (!require("jsonlite"))
  install.packages("jsonlite")

library(jsonlite)
toJSON(list(data = 75))

#install.packages("htmlwidgets")
#install.packages("devtools")

library("htmlwidgets")
library("devtools")

# create package using devtools
devtools::create("C3")  

# navigate to package dir
setwd("C3")       

# create widget scaffolding
scaffoldWidget("C3Gauge", edit = FALSE) 

# install package so we can test it
install()     

library(C3)
C3Gauge("hello, world")


install()                                      
library(C3)
C3Gauge(20)
