ui <- shinyUI(fluidPage(
  titlePanel("Modeling Normal Data"), 
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric1", "mean", value = 0, min = -100, max = 100, step = 1), 
      numericInput("numeric2", "sd", value = 0, min = -100, max = 100, step = 1), 
    ), 
    mainPanel(
      h3("Plot"), 
      plotOutput("plot1")
    )
  )
))


