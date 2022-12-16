library(tidyverse)

candy <- read_csv("data-raw/candy/candy-data.csv")

usethis::use_data(candy, overwrite = TRUE)
