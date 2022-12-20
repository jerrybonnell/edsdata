library(tidyverse)

# sourced from kaggle
# https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results?resource=download&select=athlete_events.csv

# need to log-in to kaggle to download
# curl::curl_download("https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results/download?datasetVersionNumber=2", destfile = paste("data-raw/athletes", "archive.zip", sep = "/"))

unzip("data-raw/athletes/archive_athletes.zip", exdir = "data-raw/athletes")

athletes <- read_csv("data-raw/athletes/athlete_events.csv") %>%
  drop_na()

usethis::use_data(athletes, overwrite = TRUE)
