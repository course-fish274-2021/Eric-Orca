fish_data <- read.csv("Gaeta_etal_CLC_data.csv")#reading in gaeta data
library(dplyr) #loading library dplyr
#adding column to denote fish big or small
fish_data_cat <- fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))
#change size cutoff for new column
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
