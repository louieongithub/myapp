library(UsingR)
data(Orange)

shinyServer(
    function(input, output) {
        output$ageinyears <- renderPrint({input$ageinyears})
        output$predgrowth<- renderPrint({
            ageinyrs<- input$ageinyears
            age1<-ageinyrs*365
            fit1<-lm(circumference~age,data=Orange)
            newdata<-data.frame(age=age1)
            prediction<-predict(fit1,newdata)
            prediction[[1]]
            
    
        })   
    }
)