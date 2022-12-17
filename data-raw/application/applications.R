library(tidyverse)

applications <- read_csv("data-raw/application/application.csv")

usethis::use_data(applications, overwrite = TRUE)
