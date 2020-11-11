# load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)

# Exercise 2

scrape_data <- function(x){
  
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
  html_nodes("h3 a")%>%
  html_attr("href")

links <- paste0("https://collections.ed.ac.uk/art/", links)

# make data frame ------------------------------------------------------------
tibble(
  title = titles, 
  artist = artists, 
  link = links
)
}


# Exercise 3

## Turn the code from Exercise 2 into a function that takes the URL as an input. 
## Be sure to give your function a name that helps the reader understand what it does. 

## Use your function to scrape the title, artist, and link for the first 20 
## mixed media art pieces (pages 1 - 2).



# Exercise 4

## Let's automate the process, so we can create a single data frame that contains 
## the  the artist, title, and link for all 70 mixed media art pieces. 

url_base <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="
mixed_media_urls <- paste0(url_base, seq(0, 30, 10))

mixed_media_data <- map_df(mixed_media_urls, scrape_data)

## Use the appropriate `map_` function to apply the function from Exercise 3 to 
## `mixed_media_urls`. Be sure to save the resulting data frame.

# Exercise 5

## Below is the code for `scrape_art_info`, a function to scrape the details for 
## each art piece. Use the appropriate `map_` function to apply `scrape_art_info` 
## to the data frame from the previous exercise to get the details for the 70 mixed media art pieces. 

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

## Use the `write_csv` function to save the data frame from the previous exercise 
## in your directory as a .csv file.

data <- map_df(mixed_media_data$link, scrape_art_info)



