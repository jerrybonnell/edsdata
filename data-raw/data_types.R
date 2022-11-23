library(tidyverse)

bank_loans <- rnorm(100000,100000,100000)

usethis::use_data(bank_loans, overwrite = TRUE)

bands <- c("Cream", "Led Zeppelin", "Matchbox 20",
           "ZZ Top", "James Gang",
           "Crosby, Stills, Nash, and Young",
           "Camel", "Walker Brother", "Genesis",
           "Emerson, Lake, and Palmer",
           "Derek and the Dominos",
           "Iron Maiden", "Journey",
           "Level 42", "U2")

usethis::use_data(bands, overwrite = TRUE)
