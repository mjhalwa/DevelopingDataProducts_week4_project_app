#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Some Homepage"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("inputSlider", "provide a polynomial order", 0, 10, value=1)
    ),
    
    mainPanel(
      plotOutput("outPlot"),
      h3("some explanatory text")
    ))
))
