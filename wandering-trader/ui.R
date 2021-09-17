#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(bslib)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    theme = bs_theme(version = 4, bootswatch = "minty"),
    
    # theme = bs_theme(
    #     bg = "#0b3d91", fg = "white", primary = "#FCC780",
    #     base_font = font_google("Space Mono"),
    #     code_font = font_google("Space Mono")
    # ),
    #bs_theme_preview(theme)

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
