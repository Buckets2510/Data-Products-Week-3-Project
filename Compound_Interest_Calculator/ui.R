#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Calculate your retirement savings"),
        sidebarPanel(
                h5("Determine the expected amount of retirement savings after a period of time"),
                numericInput("initial", "Input the initial investment amount ($)", value = 0),
                numericInput("interest", "Input the expected interest rate (%)", value = 0),
                numericInput("years", "Input the number of years to accrue interest", value = 0),
                submitButton("Calculate")
        ),
        mainPanel(
                h3("Results:"),
                p("Your expected return is:"),
                verbatimTextOutput("income")
        )
))
