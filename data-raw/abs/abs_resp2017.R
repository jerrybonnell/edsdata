## code to prepare `abs_partp2017` dataset goes here

abs_resp2017 <- read_csv("data-raw/abs/abs_marriage_survey_2017_response.csv") %>%
  rename(`Territory/State` = Region) %>%
  select(-`Total (%)`)

usethis::use_data(abs_resp2017, overwrite = TRUE)
