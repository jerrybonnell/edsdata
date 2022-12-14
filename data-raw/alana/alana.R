library(tidyverse)

alana <- read_csv("data-raw/alana/alana.csv") %>%
  mutate(day = seq(1, 80)) %>%
  relocate(day, .before = heron)

usethis::use_data(alana, overwrite = TRUE)
