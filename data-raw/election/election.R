library(tidyverse)

election <- read_csv("data-raw/election/countypres_2000-2020.csv")

usethis::use_data(election, overwrite = TRUE)
