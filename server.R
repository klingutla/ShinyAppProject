library(shiny)
library(datasets)

shinyServer(
  function(input, output) {
    ds <- mtcars                      
    
    output$myView <- renderTable({
      
      ntext()
    }) 
    
    ntext <- eventReactive(input$goButton, {
      t1 <- subset(ds, ds$mpg > input$mpg)
      t2 <- subset(t1, t1$cyl == input$cyl)
      
      t2
    })
    
                           
  })
