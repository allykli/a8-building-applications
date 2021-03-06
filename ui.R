# assignment 8  ||  UI

library(shiny)
library(plotly)
library(dplyr)


shinyUI(fluidPage(
  # Create a title
  titlePanel("Iris Data"),
  
  # Create sidebar layout
  sidebarLayout(
    
    # Side panel for controls
    sidebarPanel(
      
      # Input to select variables to plot
      selectInput("info", label = h3("Choose a petal specification:"), 
                  choices = list("Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'),
                  selected = 'Petal.Length'),
      
      selectInput("info2", label = h3("Choose a sepal specification:"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width'), 
                  selected = 'Sepal.Length'),
      
      # Input to select how many datapoints to show
      sliderInput("obs", label = h3("Select Number of Observations"), min = 1, max = 150, value = 10)
    ),
    
    # Main panel: display plotly chart
    mainPanel(
      plotlyOutput("chart")
    )
  )
))