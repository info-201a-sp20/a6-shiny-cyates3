library(dplyr)
library(ggplot2)
source("pov_college_chart.R")
source("pov_pop_chart.R")
server <- function(input, output) {
  output$pov_college <- renderPlot({
    pov_college_chart(input)
  })

  output$pov_pop <- renderPlot({
    pov_pop_chart(input)
  })

}
