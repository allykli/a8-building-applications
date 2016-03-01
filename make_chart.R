library(plotly)

make_chart <- function(df, x, y, obs, checkGroup) {
  
  # Alter how much data is shown
  d <- df[sample(nrow(df), obs), ]
  
  # Creating the plot
  plot <- plot_ly(data = d, x = eval(parse(text = x)), y = eval(parse(text = y)), 
                  mode = "markers", color = Species) %>%
  
  # Modifying the layout
  layout(title = "Iris Petal and Sepal Data",
         xaxis = list(title = as.character(x)), 
         yaxis = list(title = as.character(y)))
  return(plot)
}
