server = shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    mn <- input$numeric1
    sd <- input$numeric2
    dat <- rnorm(100000, mean = mn, sd = sd)
    h <- hist(dat, xlab = "Random Normals", ylab = "Frequency", main = "Normal Distribution", col = "red")
    x <- seq(min(dat), max(dat), length = 100000)
    y <- dnorm(x, mean = mn, sd = sd)
    y <- y*diff(h$mids[1:2]*length(dat))
    lines(x, y, col = "blue", lwd = 3)
  })
  })
