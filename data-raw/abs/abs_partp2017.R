## code to prepare `abs_partp2017` dataset goes here

abs_partp2017 <- read_csv("data-raw/abs/abs_marriage_survey_2017_participation.csv")

usethis::use_data(abs_partp2017, overwrite = TRUE)
