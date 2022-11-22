library(tidyverse)

pluto <- tribble(
  ~Major, ~Gender, ~Applied, ~Accepted,
  "Astronomy", "Male",  825, 511,
  "Astronomy", "Female", 168, 148,
  "Biology", "Male", 560, 352,
  "Biology", "Female", 25, 17,
  "Chemistry", "Male", 325, 120,
  "Chemistry", "Female", 593, 352,
  "Data Science", "Male", 417, 139,
  "Data Science", "Female", 375, 298,
  "Economics", "Male", 191, 53,
  "Economics", "Female",393, 240,
  "Finances", "Male", 373, 22,
  "Finances", "Female", 641, 563)

usethis::use_data(pluto, overwrite = TRUE)
