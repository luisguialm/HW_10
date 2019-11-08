co2_report <- function(country, year){
  emissions <- read.csv("co2_emissions_tonnes_per_person_gapminder.csv")
  xyear <- paste0("X", year)
  country <- emissions[emissions$country == country, xyear]
  if (!is.character(country)) {
    stop("country must be a character vector")
  }
  if (!is.numeric(year)) {
    stop("year must be a numeric vector")
  }
  10 = quantile(emissions[, xyear], 0.10, na.rm = TRUE)
  20 = quantile(emissions[, xyear], 0.20, na.rm = TRUE)
  30 = quantile(emissions[, xyear], 0.30, na.rm = TRUE)
  40 = quantile(emissions[, xyear], 0.40, na.rm = TRUE)
  if (country <= p10){
    grade <- "A"
  } else if (country <= p20){
    grade <- "B"
  } else if (country <= p30){
    grade <- "C"
  } else if (country <= p40){
    grade <- "D"
  } else{
    grade <- "F"
  }
}