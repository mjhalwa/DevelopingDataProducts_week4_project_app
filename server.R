#

library(shiny)

shinyServer(function(input, output) {
  
  model1pred <- reactive({
    mpgInput <- input$sliderMPG #from UI
    predict(model1, newdata = data.frame(mpg=mpgInput))
  })
  
  model2pred <- reactive({
    mpgInput <- input$sliderMPG #from UI
    predict(model2, newdata = data.frame(mpg=mpgInput,
                                         mpgsp = ifelse(mpgInput - 20>0, mpgInput - 20, 0)))
  })
  
  output$outPlot <- renderPlot({
    x <- seq(from=-10,to=10,by=0.01)
    y <- x^input$inputSlider
    plot(x,y,type="l")
  })
  
  
})