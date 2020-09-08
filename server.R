#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$CText <- renderText(round((input$Ftemp - 32) * (5/9),1))
    output$FText <- renderText(round((input$Ctemp * (9/5) + 32),1))

    })
