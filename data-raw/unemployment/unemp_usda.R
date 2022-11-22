library(tidyverse)

unemp_usda <- readxl::read_xlsx("data-raw/unemployment/Unemployment.xlsx", sheet = 1) %>%
  drop_na(FIPS_code)

usethis::use_data(unemp_usda, overwrite = TRUE)
