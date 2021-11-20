fish_data <- read.csv("Gaeta_etal_CLC_data1.csv")#reading in gaeta data
library(dplyr) #loading library dplyr
#adding column to denote fish big or small
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))
#change size cutoff for new column
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
#remove fish data with scale size smaller than 1 mm
fish_data_cat <-filter(fish_data_cat, scalelength > 1)
#install tidyverse and ggplot2 to make scatterplot with length on the x-axis and scalelength on the y-axis, then color the points using lakeid
install.packages("tidyverse")
library("ggplot2")
ggplot(data=fish_data_cat)+
  geom_point(mapping=aes(x=length,y=scalelength,color=lakeid))



ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80)
