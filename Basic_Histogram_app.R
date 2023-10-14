ui <- fluidPage(
    titlePanel("Example - Basic Histogram"),
    sidebarLayout(
        sidebarPanel(
            numericInput(inputId="n",
                         label="Number of observations",
                         value=1000),
            numericInput(inputId = "bins", label="# bins", value=5)),  
        mainPanel(plotOutput(outputId="plot"))
    )
)

server <- function(input, output) {
    data <- reactive({
        set.seed(12345)
        x <- rnorm(input$n)
        x })
    
    output$plot <- renderPlot({
        hist(data(), breaks=input$bins, main=paste("# bin:",input$bins,"\nthe sample size:",input$n),  xlab="x")
    })
}
shinyApp(ui = ui, server = server)