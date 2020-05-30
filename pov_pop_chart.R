pov_pop_chart <- function(input) {
  plot_perc_df <- midwest %>%
    filter(state == input$state_pop) %>%
    select("state", 12:16, "percbelowpoverty")
  colnames(plot_perc_df) <- list("State", "White", "Black", "American_Indian",
                                 "Asian", "Other", "Below_Poverty")

  pov_pop_info <- ggplot(data = plot_perc_df, mapping = aes_string(
    x = "Below_Poverty",
    y = input$pop_choice)) +
    geom_point() +
    labs(
      title = paste(input$pop_choice,
                    "population vs. Below Poverty rates in counties across",
                    input$state_pop),
      y = paste("Percent", input$pop_choice, "Population"),
      x = "Percent Below Poverty"
    )
  return(pov_pop_info)
}
