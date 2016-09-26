
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(bootstrapPage(
  actionButton("update","update gauge"),
  
  # example use of the automatically generated output function
  C3GaugeOutput("gauge1")
))
