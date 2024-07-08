#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

incomefunc <- function(initial, interest, years){
        income <- round((initial * (1+(interest/100)/1)^(years)), digits = 1)
}

shinyServer(
        function(input,output){
                output$income <- renderText({incomefunc(input$initial, input$interest, input$years)})
        }
)