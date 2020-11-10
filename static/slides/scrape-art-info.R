# load packages ----------------------------------------------------------------
library(tidyverse)
library(rvest)

# prep URLs

url_base <- "https://collections.ed.ac.uk/art/search/*:*/Classification:%22abstract+%28fine+arts+style%29+%7C%7C%7C+Abstract+%28fine+arts+style%29%22?offset="
urls <- paste0(url_base, seq(0,170, 10))

scrape_art_data <- function(url){
# read in url ------------------------------------
page <- read_html(url)

# title -----------------------------------------------------------------------
titles <- page %>%
  html_nodes("h3 a") %>%
  html_text() %>%
  str_squish() 

# artist -----------------------------------------------------------------------
artists <- page %>%
  html_nodes(".artist") %>%
  html_text()
  

# link ------------------------------------------------------------------------
links <- page %>%
  html_nodes("h3 a") %>%
  html_attr("href")

links <- paste0("https://collections.ed.ac.uk/art/", links)

# make dataframe ------------------------------------------------------------
uoe_art <- tibble(
  title = titles, 
  artist = artists, 
  link = links
)
}

uoe_abstract_art <- map_df(urls, scrape_art_data)

write_csv(uoe_abstract_art, "data/uoe_abstract_art.csv")

