library(tidyverse)

temp <- tempfile()
download.file("https://ed-public-download.app.cloud.gov/downloads/Most-Recent-Cohorts-Institution_09012022.zip",temp)
data <- read.csv(unz(temp, "Most-Recent-Cohorts-Institution.csv"))
unlink(temp)
scorecard_fl <- tibble(data) %>%
  filter(STABBR == "FL")

usethis::use_data(scorecard_fl, overwrite = TRUE)
