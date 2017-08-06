#

library(shiny)

shinyUI(fluidPage(
  titlePanel("Understand polynomial order"),
  sidebarLayout(
    sidebarPanel(
      h3("Polynomial order"),
      p("click the slider and use the
         arrow keys left and right to
         move the slider"),
      img(src="arrowkeys.png", height = 120, width = 170),
      br(),
      br(),
      p("or drag the slider
        with the cursor"),
      br(),
      br(),
      sliderInput("inputSlider", "provide a polynomial order", 0, 10, value=1,
                  ticks=FALSE, pre="y = x^")
    ),
    
    mainPanel(
      plotOutput("outPlot"),
      h3("Application Explanation"),
      p("This application is meant to help getting a feeling for polyinomial
         equations. Therefore you may select a polynomial order. This polynomial
         is then plotted."),
      p("The function of the selected polynomial is shown above the slider and
        in the plot with a ",span("red",style="color:red"),"line. In addition a ",
        span("blue", style="color:blue")," line shows the polynomial y=x^1,
        to make the difference in polynomial orders more obvious."),
      p("Especially compare the difference in different even or odd orders.")
    ))
))
