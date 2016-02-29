library(datasets)
library(shiny)

shinyServer(
  function(input, output){
    output$newHist <- renderPlot({
      hist(mtcars$mpg, xlab = 'mpg',col = 'lightblue', main = 'Histogram')
      mu <- input$mu
      lines(c(mu,mu), c(0,200), col = 'red', lwd = 5)
      mse <- mean((mtcars$mpg - mu)^2)
      text(30,12,paste("mu = ",mu))
      text(30,11,paste("MSE = ",mse))
    })
  }
)