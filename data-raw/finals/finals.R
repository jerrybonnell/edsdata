library(tidyverse)

finals <- read_csv("data-raw/finals/final_exams.csv")

usethis::use_data(finals, overwrite = TRUE)
