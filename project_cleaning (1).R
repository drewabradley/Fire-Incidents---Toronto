# Drew Bradley
# 12-7-23
# Final Project - Cleaning


rm(list=ls())

incidents <- read.csv("Fire-incidents.csv")


library(stringi)

library(lubridate)
library(readxl)



incidents$TFS_Alarm_Time <- as.Date(incidents$TFS_Alarm_Time)

incidents$year <- as.Date(incidents$TFS_Alarm_Time)

incidents <- incidents[, c("Area_of_Origin", "Civilian_Casualties", "Estimated_Dollar_Loss", "Ignition_Source", "Latitude", "Longitude", "Material_First_Ignited", "year", "Incident_Station_Area")]




incidents_2015 <- incidents[year(incidents$year) == 2015, ]
View(incidents_2015)
View(slpres_1)

wind_1 <- read_excel("Toronto Wind 12-08.xlsx", col_names = FALSE)
colnames(wind_1) <- c("year", "km/h")
wind_1$'km/h' <- gsub(" km/h", "", wind_1$'km/h')
wind_1$'km/h' <- gsub("\u00a0", "", wind_1$'km/h')
wind_1$'km/h' <- as.numeric(wind_1$'km/h')
wind_1$year <- as.Date(wind_1$year, format = "%b %d %Y")

wind_2 <- read_excel("Toronto Wind 08-03.xlsx", col_names = FALSE)
colnames(wind_2) <- c("year", "km/h")
wind_2$'km/h' <- gsub(" km/h", "", wind_2$'km/h')
wind_2$'km/h' <- gsub("\u00a0", "", wind_2$'km/h')
wind_2$'km/h' <- as.numeric(wind_2$'km/h')
wind_2$year <- as.Date(wind_2$year, format = "%b %d %Y")

wind_3 <- read_excel("Toronto Wind 03-01.xlsx", col_names = FALSE)
colnames(wind_3) <- c("year", "km/h")
wind_3$'km/h' <- gsub(" km/h", "", wind_3$'km/h')
wind_3$'km/h' <- gsub("\u00a0", "", wind_3$'km/h')
wind_3$'km/h' <- as.numeric(wind_3$'km/h')
wind_3$year <- as.Date(wind_3$year, format = "%b %d %Y")

temp_1 <- read_excel("Toronto Temp 12-08.xlsx", col_names = FALSE)
colnames(temp_1) <- c("year", "degreesC")
temp_1$degreesC <- gsub(" °C", "", temp_1$degreesC)
temp_1$degreesC <- gsub("\u00a0", "", temp_1$degreesC)
temp_1$degreesC <- as.numeric(temp_1$degreesC)
temp_1$year <- as.Date(temp_1$year, format = "%b %d %Y")

temp_2 <- read_excel("Toronto Temp 08-03.xlsx", col_names = FALSE)
colnames(temp_2) <- c("year", "degreesC")
temp_2$degreesC <- gsub(" °C", "", temp_2$degreesC)
temp_2$degreesC <- gsub("\u00a0", "", temp_2$degreesC)
temp_2$degreesC <- as.numeric(temp_2$degreesC)
temp_2$year <- as.Date(temp_2$year, format = "%b %d %Y")

temp_3 <- read_excel("Toronto Temp 03-01.xlsx", col_names = FALSE)
colnames(temp_3) <- c("year", "degreesC")
temp_3$degreesC <- gsub(" °C", "", temp_3$degreesC)
temp_3$degreesC <- gsub("\u00a0", "", temp_3$degreesC)
temp_3$degreesC <- as.numeric(temp_3$degreesC)
temp_3$year <- as.Date(wind_3$year, format = "%b %d %Y")

slpres_1 <- read_excel("Toronto SeaLevel 12-08.xlsx", col_names = FALSE)
colnames(slpres_1) <- c("year", "kPa")
slpres_1$kPa <- gsub(" kPa", "", slpres_1$kPa)
slpres_1$kPa <- gsub("\u00a0", "", slpres_1$kPa)
slpres_1$kPa <- as.numeric(slpres_1$kPa)
slpres_1$year <- as.Date(slpres_1$year, format = "%b %d %Y")

slpres_2 <- read_excel("Toronto SeaLevel 08-03.xlsx", col_names = FALSE)
colnames(slpres_2) <- c("year", "kPa")
slpres_2$kPa <- gsub(" kPa", "", slpres_2$kPa)
slpres_2$kPa <- gsub("\u00a0", "", slpres_2$kPa)
slpres_2$kPa <- as.numeric(slpres_2$kPa)
slpres_2$year <- as.Date(slpres_2$year, format = "%b %d %Y")

slpres_3 <- read_excel("Toronto SeaLevel 03-01.xlsx", col_names = FALSE)
colnames(slpres_3) <- c("year", "kPa")
slpres_3$kPa <- gsub(" kPa", "", slpres_3$kPa)
slpres_3$kPa <- gsub("\u00a0", "", slpres_3$kPa)
slpres_3$kPa <- as.numeric(slpres_3$kPa)
slpres_3$year <- as.Date(slpres_3$year, format = "%b %d %Y")

write.csv(incidents_2015, "incidents_2015.csv", row.names = FALSE)
write.csv(wind_1, "wind_1.csv", row.names = FALSE)
write.csv(wind_2, "wind_2.csv", row.names = FALSE)
write.csv(wind_3, "wind_3.csv", row.names = FALSE)
write.csv(temp_1, "temp_1.csv", row.names = FALSE)
write.csv(temp_2, "temp_2.csv", row.names = FALSE)
write.csv(temp_3, "temp_3.csv", row.names = FALSE)
write.csv(slpres_1, "slpres_1.csv", row.names = FALSE)
write.csv(slpres_2, "slpres_2.csv", row.names = FALSE)
write.csv(slpres_3, "slpres_3.csv", row.names = FALSE)
