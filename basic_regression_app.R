library(shiny)
library(ggplot2)

ui <- fluidPage(
    titlePanel("Homewor # shiny"),
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "level",
                        "Level of Confidence Interval:",
                        min = 0.8,
                        max = 0.99,
                        value = 0.95,step=0.01),
            radioButtons(inputId = "methods", "Smoothing method",
                         c("lm" = "lm",
                           "gam" = "gam",
                           "loess" = "loess",
                           "glm"="glm"))
        ),
        mainPanel(
            plotOutput('distPlot')
        )
    )
)

server <- function(input, output) {
    output$distPlot <- renderPlot({
        ggplot(data=mtcars,aes(x=wt,y=mpg))+
            geom_point()+
            stat_smooth(method =input$methods ,level=input$level)
    })
}

shinyApp(ui = ui, server = server)
