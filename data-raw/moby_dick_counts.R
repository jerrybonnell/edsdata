library(tidyverse)
library(readtext)

url <- "https://www.gutenberg.org/files/2701/2701-0.txt"
moby <- readtext(url) %>%
  str_sub(27780)

moby_chapters <- unlist(str_split(moby, fixed("CHAPTER"))) %>%
  str_trim() %>%
  str_replace_all("\\s+", " ") %>%
  str_to_lower()

moby_df <- tibble("chapters" = moby_chapters) %>%
  slice(-1)

moby_dick_counts <- moby_df %>%
  mutate(
    chapter_num = row_number(),
    whale = str_count(chapters, "whale"),
    sea = str_count(chapters, "sea"),
    ahab = str_count(chapters, "ahab"),
  )

usethis::use_data(moby_dick_counts, overwrite = TRUE)
