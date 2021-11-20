fish_data <- read.csv("Gaeta_etal_CLC_data.csv")#reading in gaeta data
library(dplyr) #loading library dplyr
#adding column to denote fish big or small
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))
#change size cutoff for new column
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
#remove fish data with scale size smaller than 1 mm
fish_data_cat <-filter(fish_data_cat, scalelength > 1)
