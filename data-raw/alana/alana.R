library(tidyverse)

alana <- read_csv("data-raw/alana/alana.csv")

usethis::use_data(alana, overwrite = TRUE)
