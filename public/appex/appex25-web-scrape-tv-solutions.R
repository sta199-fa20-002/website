# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)

# read in http://www.imdb.com/chart/tvmeter ------------------------------------
page <- read_html("http://www.imdb.com/chart/tvmeter")

# years ------------------------------------------------------------------------
years <- page %>%
  html_nodes(".secondaryInfo:nth-child(2)") %>%
  html_text() %>%
  str_remove("\\(") %>%
  str_remove("\\)") %>%
  as.numeric()

# scores -----------------------------------------------------------------------
scores <- page %>%
  html_nodes(".imdbRating") %>%
  html_text() %>%
  str_trim() %>%
  as.numeric()

# names ------------------------------------------------------------------------
names <- page %>%
  html_nodes(".titleColumn") %>%
  html_text() %>%
  str_trim() %>%
  str_extract("^(.+)\\n") %>%
  str_remove("\n")

# tvshows dataframe ------------------------------------------------------------
tvshows <- tibble(
  rank = 1:100,
  name = names,
  year = years,
  score = scores
)
