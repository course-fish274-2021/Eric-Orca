#install required packages
install.packages("tidyverse")
#open required libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(readr)

#question 1interpreting the relationship between the size of sea urchin and the speed of their predator flight response.
Urchin_data <- read_csv("data_raw/Urchin data - for repository.csv")#read in the data
ggplot(Urchin_data)+
  geom_smooth(mapping=aes(x = Diameter, y = Distance),method="lm")+ #make the plot
scale_y_log10() +
  scale_x_log10()
#according to the plot, there is a moderate negative correlation between diameter of urchin and the distance they move after 30 seconds of predator flight reaction

#question 2.comparing diameter of Urchins after days of capture to first day of capture and wild controls.
ggplot(Urchin_data)+
  geom_histogram(mapping=aes( x = Diameter))+
  scale_y_log10() +
  scale_x_log10()+
facet_wrap(~Treatment)
#the bar graphs indicates that after 4 days of capture, the diameter tend to be much lower than comparing to 1 day captives and wild controls.