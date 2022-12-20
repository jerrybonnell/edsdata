library(tidyverse)

# filtered a prior; source from kaggle
# https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results?resource=download&select=athlete_events.csv
# read_csv("data-raw/athletes/athlete_events.csv") %>%
#   filter(Year > 1980) %>%
#   write_csv("data-raw/athletes/athlete_events_filtered.csv")
athletes <- read_csv("data-raw/athletes/athlete_events_filtered.csv")

usethis::use_data(athletes, overwrite = TRUE)
