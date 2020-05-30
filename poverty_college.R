side_panel_info <- sidebarPanel(
    selectInput(
      inputId = "state_college",
      label = h3("State of Interest"),
      choices = list("IL", "IN", "MI", "OH", "WI"),
      selected = "IL"
    ),
    radioButtons(
      inputId = "pov_choice",
      label = h3("Poverty Area of Interest"),
      choices = list("Known", "Below", "Children_Below", "Adult", "Elderly"),
      selected = "Known"
    )
  )

poverty_college <- tabPanel("Poverty vs. College",
             sidebarLayout(
               side_panel_info,
               mainPanel(
                 plotOutput("pov_college")
               )
             )
            )
