# assignment 8  ||  SERVER

library(shiny)
library(plotly)
source("make_chart.R")
data <- iris

shinyServer(function(input, output) {
  # Create a plot via make_chart
  output$chart <- renderPlotly({
    make_chart(data, input$info, input$info2, input$obs, input$checkGroup)
  })
  
})