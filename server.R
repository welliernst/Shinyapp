#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# 
#

library(shiny)
# Server logic 
shinyServer(function(input,output) {
    cs0<-reactive({ifelse(input$AGE>75,2, ifelse(input$AGE>65,1,0))})
    calc_sum<-reactive({
        as.numeric(cs0()) + ifelse(input$C,1,0) + ifelse(input$H,1,0) + ifelse(input$D,1,0) + ifelse(input$S,2,0) + ifelse(input$F,1,0)
    })
    output$text <- renderText(input$AGE)
    output$text2 <- renderText(calc_sum())
})
