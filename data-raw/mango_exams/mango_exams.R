library(tidyverse)

mango_exams <- read_csv("data-raw/mango_exams/csc_exam_scores.csv")

usethis::use_data(mango_exams, overwrite = TRUE)
