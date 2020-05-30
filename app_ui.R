source("poverty_college.R")
source("poverty_race.R")

ui <- navbarPage("Midwest Poverty Rates", poverty_college, poverty_race)
