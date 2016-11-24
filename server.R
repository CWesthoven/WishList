#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
    output$homepage_text <- renderUI({
        HTML("Please place required input files into the /opt/Blueshift/AutoRateUpload/Inputs/ folder.<br><br>
                <strong>Required Files:</strong><br>
                <UL>
                <LI>BTF_Monthly_RP.csv - <i>Incoming file from Unilever</i>
                <LI>X1 Pricing.csv - <i>Pricing file for X1 equipment type</i>
                </UL>
                <br>
     
               <br><br><br>
               <h4>Test</h4><br><br>
               ")
    })
  
})
