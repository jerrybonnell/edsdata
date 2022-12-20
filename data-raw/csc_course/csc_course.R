library(tidyverse)


csc_course_hw <- read_csv("data-raw/csc_course/csc_course_hw.csv")
csc_course_lab <- read_csv("data-raw/csc_course/csc_course_lab.csv")
csc_course_qz <- read_csv("data-raw/csc_course/csc_course_qz.csv")

usethis::use_data(csc_course_hw, overwrite = TRUE)
usethis::use_data(csc_course_lab, overwrite = TRUE)
usethis::use_data(csc_course_qz, overwrite = TRUE)
