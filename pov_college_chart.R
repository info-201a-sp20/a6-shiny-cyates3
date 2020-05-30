pov_college_chart <- function(input) {
  plot_df <- midwest %>%
    filter(state == input$state_college) %>%
    select("state", 19, 22:26)
  colnames(plot_df) <- list("State", "percollege", "Known", "Below",
                            "Children_Below", "Adult", "Elderly")

  pov_college_info <- ggplot(data = plot_df,
    mapping = aes_string(x = "percollege", y = input$pov_choice)) +
    geom_point() +
    labs(
      title = paste(input$pov_choice,
                    "Poverty Vs. College education rates in counties across",
                    input$state_college),
      y = paste("Percent", input$pov_choice, "Poverty")
    )
  return(pov_college_info)
}
