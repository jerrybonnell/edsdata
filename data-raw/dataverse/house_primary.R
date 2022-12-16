library(tidyverse)

house_primary <- read_tsv("data-raw/dataverse/house_primary_2012_2018.tab")
house_primary

usethis::use_data(house_primary, overwrite = TRUE)
