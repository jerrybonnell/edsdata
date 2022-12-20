library(tidyverse)

csc_labs <- read_csv("data-raw/csc_labs/csc_labs.csv")

usethis::use_data(csc_labs, overwrite = TRUE)
