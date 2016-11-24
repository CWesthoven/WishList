#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(dplyr)
library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
header <- dashboardHeader(title = "Wish Lists")

sidebar <- dashboardSidebar(
    sidebarMenu(
        textInput("user", "Username:", value = ""),
        passwordInput("password", "Password: ", value = ""),
        submitButton(text = "Submit"),
        htmlOutput("selectUI_user_family"),
        menuItem("Home Page",
                 tabName = "homepage",
                 icon = icon("home")
                 ),
        menuItem("Your List",
                 tabName = "dashboard",
                 icon = icon("user")
                 ),
        menuItem("Other Lists",
                 tabName = "widgets",
                 icon = icon("users")
                 )
    )
)

body <- dashboardBody(
    tabItems(
        tabItem(
            tabName = "homepage",
            h2("Welcome to Wish Lists"),
            htmlOutput("homepage_text")
        )
    )
)

dashboardPage(header, sidebar, body)