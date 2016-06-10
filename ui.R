#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Search for Cars based on Mileage and Cylinders"),
    
    
    sidebarPanel(
      numericInput("mpg", "Miles per Gallon", 21),
      numericInput("cyl", "Cylinders", 4),
      actionButton("goButton", "Go!"),
      p("Click the button to search cars based on MPG and Cylinders")
    ),
    
    mainPanel(
      verbatimTextOutput("summary"),
      tableOutput("myView")
    )
  )
)
