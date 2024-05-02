# Drew Bradley
# 12-7-23
# Final Project - Analyzing

rm(list=ls())

library(dplyr)
library(ggplot2)
library(ggmap)

incidents_with_weather <- read.csv("incidents_with_weather.csv", fileEncoding = "UTF-8")



incidents_by_temp <- incidents_with_weather %>%
  group_by(year) %>%
  summarise(average_temperature = mean(degreesC, na.rm = TRUE),
            count = n())

ggplot(incidents_by_temp, aes(x = average_temperature, y = count)) +
  geom_point(size = 3) + 
  labs(x = "Temperature in Celsius", y = "Number of incidents", title = "Number of incidents per Days Temperature") +
  theme_minimal()


incidents_by_pressure <- incidents_with_weather %>%
  group_by(year) %>%
  summarise(average_pressure = mean(kPa, na.rm = TRUE),
            count = n())

ggplot(incidents_by_pressure, aes(x = average_pressure, y = count)) +
  geom_point(size = 3) + 
  labs(x = "Sea Level Pressure", y = "Number of incidents", title = "Number of incidents for Sea Level Pressures") +
  theme_minimal()

incidents_by_wind <- incidents_with_weather %>%
  group_by(year) %>%
  summarise(average_winds = mean(km.h, na.rm = TRUE),
            count = n())

ggplot(incidents_by_wind, aes(x = average_winds, y = count)) +
  geom_point(size = 3) +
  labs(x = "Wind Speed in km/h", y = "Number of incidents", title = "Number of incidents per Wind Speed") +
  theme_minimal()

qplot(Longitude, # x (horizontal)
      Latitude, # y (vertical)
      data=incidents_with_weather, # data source
      geom="point") # plot type






