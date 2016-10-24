
# Load Packages
library(shiny)

# Read in Advertising.csv
Advertising <- read.csv("../../hws/stat159-fall2016-hw02/data/Advertising.csv")
# remove row index column
Advertising <- Advertising[,-1]

ui <- fluidPage(
  headerPanel('Scatterplot of Sales vs Different Advertising Channels'),
  sidebarPanel(
    selectInput('xcol', 'Advertising Channel', c("TV", "Radio", "Newspaper"))
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    Advertising[, c(input$xcol, "Sales")]
  })
  
  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         pch = 20, cex = 3)
  })
  
}

shinyApp(ui = ui, server = server)
