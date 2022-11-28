library(tidyverse)

# Data manually parsed from Wikipedia long jump results page
salary <- read_csv("https://data.ny.gov/api/views/fx93-cifz/rows.csv?accessType=DOWNLOAD&sorting=true")

nysalary <- salary %>%
  filter(str_detect(`Fiscal Year End Date`, "12/31/2020")) %>%
  mutate(`Base Annualized Salary` = str_c("$",`Base Annualized Salary`),
         `Actual Salary Paid` = str_c("$",`Actual Salary Paid`),
         `Overtime Paid` = str_c("$",`Overtime Paid`),
         `Performance Bonus` = str_c("$", `Performance Bonus`),
         `Extra Pay` = str_c("$",`Extra Pay`),
         `Other Compensation` = str_c("$",`Other Compensation`),
         `Total Compensation` = str_c("$",`Total Compensation`)) %>%
  drop_na(`Total Compensation`) %>%
  select(-c(`Has Employees`))

nysalary_cleaned <- nysalary %>%
  mutate(`Total Compensation ($)` = map_dbl(`Total Compensation`,
                                            function(x) as.double(str_remove_all(x, "[$,]"))/10000))


usethis::use_data(nysalary, overwrite = TRUE)
usethis::use_data(nysalary_cleaned, overwrite = TRUE)
