shinyServer(
        function(input, output) {
        
                
                output$bmi <- renderText({ 
                        
                if (input$radio==1){
                        
                        sex<-"Male"
                }else{
                        
                        sex<-"Female"     
                }
                
              if (!is.nan(input$slider2/input$slider1)){
                bmi<-input$slider2/(input$slider1^2)
                paste(input$text,"..You are a",sex, "...Your BMI is",bmi)
              }else{
                  bmi<-""    
                 paste("No Info",bmi)
                      
              }
                        
        })
       
})
