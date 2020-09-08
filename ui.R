#

library(shiny)

# UI Coding
shinyUI(fluidPage(

    # Application title
    titlePanel("Temperature Conversion"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Ftemp",
                        "Temp (Farenheit):",
                        min = -50,
                        max = 150,
                        value = 70),
        sliderInput("Ctemp",
                    "Temp (Celsius):",
                    min = -50,
                    max =50,
                    value = 0),
        em("Instructions: Move either slider and the application will convert F to C or C to F")
    ),
        # Show a plot of the generated distribution
        mainPanel(
            br(),
            strong("Converted Temp (C):"),
            textOutput("CText"),
            br(),
            br(),
            br(),
            strong("Converted Temp (F):"),
            textOutput("FText")
        )
    )
))
