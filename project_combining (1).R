# Drew Bradley
# 12-7-23
# Final Project - Combining

rm(list=ls())

incidents_2015 <- read.csv("incidents_2015.csv", fileEncoding = "UTF-8")
incidents_2015$year <- as.Date(incidents_2015$year, format = "%Y-%m-%d")

wind_1 <- read.csv("wind_1.csv", fileEncoding = "UTF-8")
wind_1$year <- as.Date(wind_1$year, format = "%Y-%m-%d")

wind_2 <- read.csv("wind_2.csv", fileEncoding = "UTF-8")
wind_2$year <- as.Date(wind_2$year, format = "%Y-%m-%d")

wind_3 <- read.csv("wind_3.csv", fileEncoding = "UTF-8")
wind_3$year <- as.Date(wind_3$year, format = "%Y-%m-%d")

temp_1 <- read.csv("temp_1.csv", fileEncoding = "UTF-8")
temp_1$year <- as.Date(temp_1$year, format = "%Y-%m-%d")

temp_2 <- read.csv("temp_2.csv", fileEncoding = "UTF-8")
temp_2$year <- as.Date(temp_2$year, format = "%Y-%m-%d")

temp_3 <- read.csv("temp_3.csv", fileEncoding = "UTF-8")
temp_3$year <- as.Date(temp_3$year, format = "%Y-%m-%d")

slpres_1 <- read.csv("slpres_1.csv", fileEncoding = "UTF-8")
slpres_1$year <- as.Date(slpres_1$year, format = "%Y-%m-%d")

slpres_2 <- read.csv("slpres_2.csv", fileEncoding = "UTF-8")
slpres_2$year <- as.Date(slpres_2$year, format = "%Y-%m-%d")

slpres_3 <- read.csv("slpres_3.csv", fileEncoding = "UTF-8")
slpres_3$year <- as.Date(slpres_3$year, format = "%Y-%m-%d")

# Vertically combine the weather data together
winds <- rbind(wind_1, wind_2, wind_3)

temps <- rbind(temp_1, temp_2, temp_3)

pressures <- rbind(slpres_1, slpres_2, slpres_3)

# Horizontally combine fire incidents with weather data
incidents_with_winds <- merge(incidents_2015, winds, by = "year")

incidents_with_winds_temps <- merge(incidents_with_winds, temps, by = "year")

incidents_with_weather <- merge(incidents_with_winds_temps, pressures, by = "year")
View(incidents_with_weather)

write.csv(incidents_with_weather, "incidents_with_weather.csv", row.names = FALSE)
