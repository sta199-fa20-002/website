# Exercises 2 - 6

# load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)

# Exercise 2

url <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="

page <- read_html(_____)

# title -----------------------------------------------------------------------
titles <- page %>%
  html_nodes("h3 a") %>%
  html_text() %>%
  str_squish() 

# artist -----------------------------------------------------------------------
artists <- page %>%
  _____ 


# link ------------------------------------------------------------------------
links <- ______ %>%
  ______ %>%
  ______("href")

links <- paste0("https://collections.ed.ac.uk/art/", links)

# make data frame ------------------------------------------------------------
tibble(
  title = _____, 
  artist = _____, 
  link = _____
)


# Exercise 3



# Exercise 4

url_base <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="
landscape_urls <- paste0(url_base, seq(0, 30, 10))

# Exercise 5

scrape_art_info <- function(x){
  
  # read page at url ----
  page <- read_html(x)
  
  # scrape headers ----
  headers <- page %>%
    html_nodes("th") %>%
    html_text()
  
  # scrape values ----
  values <- page %>%
    html_nodes("td") %>%
    html_text() %>%
    str_squish()
  
  # put together in a tibble and add link to help keep track ----
  tibble(headers, values) %>%
    pivot_wider(names_from = headers, values_from = values) %>%
    add_column(link = x)
  
}

# Exercise 6