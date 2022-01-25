#In-class assignment 
#Class 2
#Jan 20 2022
#Emily Mensch 

#Clean environment and show errors
rm(list=ls());                       
options(show.error.locations = TRUE);

#Load packages: 
library(ggplot2)
library(cowplot)

#Load data: 
weatherData = read.csv(file="data/LansingWeather2016.csv")

#In class assignment: change elements of ggplot 
plot2 <- ggplot(weatherData, aes(windSpeed,stnPressure)) +
  geom_point() +
  labs(title = "Station Pressure vs Wind Speed",
       subtitle = "Lansing, MI (2016)",
       y = "Station Pressure (PSI)",
       x = " Wind Speed (mph)") +
  theme_cowplot() +
  theme(axis.text.x = element_text(angle = 45, 
                                   colour = 'goldenrod',
                                   face = 'bold',
                                   size = 18,
                                   family = "mono")) +
  scale_x_continuous(n.breaks = 5, 
                     limits = c(0,21),
                     minor_breaks = FALSE) +
  scale_y_continuous(breaks= seq(28.5, 30, 0.1), 
                     limits = c(28.5, 29.5))



plot(plot2)



