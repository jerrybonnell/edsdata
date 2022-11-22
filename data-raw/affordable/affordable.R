library(tidyverse)

affordable <- read_csv("data-raw/affordable/Affordable_Housing_by_Town_2011-2020.csv")
affordable <- affordable %>%
  drop_na()

usethis::use_data(affordable, overwrite = TRUE)
