#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$outPlot <- renderPlot({
    df <- data.frame(x=seq(from=-2,to=2,by=0.01))
    if(input$inputSlider==0)
      df$y <- 0
    else
      df$y <- df$x^input$inputSlider
    p <- ggplot(data=df, aes(x=x, y=y))
    p <- p + geom_hline(yintercept=0) # x coordinate
    p <- p + geom_vline(xintercept=0) # y coordinate
    p <- p + geom_abline(slope=1, intercept=0, color="blue")
    p <- p + geom_line(color="red") # polynomial line on top
    p <- p + scale_y_continuous(limits=c(-1,1)) # set fixed y scale
    p <- p + scale_x_continuous(limits=c(-1,1)) # set fixed x scale
    p
  })
  
  
})