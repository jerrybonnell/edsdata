library(tidyverse)

sf_salary <- read_csv("data-raw/sf_salary/sf-salaries.csv")
sf_salary

usethis::use_data(sf_salary, overwrite = TRUE)
