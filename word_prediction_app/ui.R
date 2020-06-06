library(shiny)
library(shinyjs)

shinyUI(fluidPage(
    useShinyjs(),  # Set up shinyjs
    titlePanel("Word Prediction App"),
    mainPanel(
        textInput('userQuery', 'Enter a word',value = ''),
        hidden(sliderInput('thresholdPercents', label='Freq.threshold', min = 1, max=100,value = 90)),
        htmlOutput('prediction')
    )
))