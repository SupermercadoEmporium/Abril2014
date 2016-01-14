library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("abril")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("abril2"))
    

  ),
  
  titlePanel("Abril"),
  sidebarLayout(
    sidebarPanel( "Resumen Abril",
                  style = "color:#2183dd;",
                  tableOutput("confidenceabril"),
                  tableOutput("liftabril")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1abril"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1abril"),
                  textOutput("tablanamecat2abril"),
                  textOutput("tablaprobcat2abril"),
                  textOutput("tablanamecat3abril"),
                  textOutput("tablaprobcat3abril"),
                  textOutput("tablanamecat4abril"),
                  textOutput("tablaprobcat4abril"),
                  textOutput("tablanamecat5abril"),
                  textOutput("tablaprobcat5abril")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1abril"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1abril"),
                  textOutput("tabla1namecat2abril"),
                  textOutput("tabla1probcat2abril"),
                  textOutput("tabla1namecat3abril"),
                  textOutput("tabla1probcat3abril"),
                  textOutput("tabla1namecat4abril"),
                  textOutput("tabla1probcat4abril"),
                  textOutput("tabla1namecat5abril"),
                  textOutput("tabla1probcat5abril"))
  )
  
  
  
))
