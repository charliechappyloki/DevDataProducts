library(shinyapps)
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Plot with mean slider for MPG for mtcars dataset"),
  sidebarPanel(
    sliderInput('mu','Guess the mean', value = 20, min = 10, max = 35, step = 0.5)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))