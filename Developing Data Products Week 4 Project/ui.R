ui <- shinyUI(fluidPage(
  titlePanel("Modeling Normal Data"), 
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric1", "mean", value = 0, min = -100, max = 100, step = 1), 
      numericInput("numeric2", "sd", value = 0, min = -100, max = 100, step = 1), 
    ), 
    mainPanel(
      h3("Plot"), h6("This application takes a mean and a standard deviation (sd) and simulates a histogram of 100,000 random normals with those perameters. It also overlays a normal bell curve to the distribution."),
      plotOutput("plot1")
    )
  )
))


