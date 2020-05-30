side_panel_info <- sidebarPanel(
    selectInput(
      inputId = "state_pop",
      label = h3("State of Interest"),
      choices = list("IL", "IN", "MI", "OH", "WI"),
      selected = "IL"
    ),
    radioButtons(
      inputId = "pop_choice",
      label = h3("Population of Interest"),
      choices = list("White", "Black", "American_Indian", "Asian", "Other"),
      selected = "White"
    )
  )

poverty_race <- tabPanel("Race vs. Poverty",
              sidebarLayout(
                side_panel_info,
                mainPanel(
                  plotOutput("pov_pop")
                )
              )
            )
