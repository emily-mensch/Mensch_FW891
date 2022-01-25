#Mensch FW 891 Homework: GGPlot Lesson 2: Components
#1/18/22

#10 - Application
#1. Functions used to create a text plot are geom_label or geom_text 
#2. Component used to change breaks on x-axis if values were in date format is scale*date()

#Scatterplot of station pressure and windspeed from Lansing 2016 NOAA data: 

#Clean environment and show errors
rm(list=ls());                       
options(show.error.locations = TRUE);

#Load packages: 
library(ggplot2)
library(cowplot)

#Load data: 
weatherData = read.csv(file="data/LansingWeather2016.csv")

#Plot variables: 
plot1 <- ggplot(weatherData, aes(windSpeed,stnPressure)) +
  geom_point() +
  labs(title = "Station Pressure vs Wind Speed",
       subtitle = "Lansing, MI (2016)",
       y = "Station Pressure (PSI)",
       x = " Wind Speed (mph)") +
  theme_cowplot() +
  theme(axis.text.x = element_text(angle = 45)) +
  scale_x_continuous(breaks = c(3,12,21), 
                     limits = c(0,21)) +
  scale_y_continuous(breaks= seq(28.5, 30, 0.1), 
                     limits = c(28.5, 29.5))
  

plot(plot1)

#10.1 - Questions to answer: 
#1. I felt very comfortable with this lesson and application. 

#2. Nothing was confusing, everything for the application was easily found in the lesson.

#3. I would like to learn more about how to make nice looking/publishable graphics 
#using ggplot.


