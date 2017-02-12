library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
      
output$plot1 <- renderPlot({
          
          formulaText <- reactive({
                  paste(input$var1, input$var2, sep = "~")
          })
          
          fit = lm(formulaText(), data = mtcars)
          
          par(mfrow=c(2,2))
          plot(fit)
          
  })
  
  
})
