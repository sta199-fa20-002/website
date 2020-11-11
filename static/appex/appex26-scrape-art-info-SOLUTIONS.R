# load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)

# Exercise 2

url <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="

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

# make data frame ------------------------------------------------------------
tibble(
  title = titles, 
  artist = artists, 
  link = links
)

# Exercise 3

## Turn the code from Exercise 2 into a function that takes the URL as an input. 
## Be sure to give your function a name that helps the reader understand what it does. 

## Use your function to scrape the title, artist, and link for the first 20 
## mixed media art pieces (pages 1 - 2).


scrape_landscape_info <- function(x) {
  page <- read_html(x)
  
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
  
  # make data frame ------------------------------------------------------------
  tibble(
    title = titles, 
    artist = artists, 
    link = links
  )
}

scrape_landscape_info("https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset=")


# Exercise 4

url_base <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="
landscape_urls <- paste0(url_base, seq(0, 30, 10))

landscape_info <- map_df(landscape_urls, scrape_landscape_info)

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

landscape_details <- map_df(landscape_info$link, scrape_art_info)

# Exercise 6

write_csv(landscape_details, "landscape-paintings.csv")