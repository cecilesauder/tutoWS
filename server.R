
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  # reactive that generates a random value for the gauge
  value = reactive({
    input$update
    round(runif(1,0,100),2)
  })
  
  # example use of the automatically generated render function
  output$gauge1 <- renderC3Gauge({ 
    # C3Gauge widget
    C3Gauge(value())
  })
})
