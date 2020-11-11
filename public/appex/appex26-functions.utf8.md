---
title: "AE 26: Functions + automation"
date: "2020-11-11"
output: 
  html_document: 
    theme: readable
---

## Evals

+1 Exam 02 if there is 80% response rate on the TA evaluations **and** course evaluations (on DukeHub).

## Project presentation meetings - Monday Nov 16

If you would like to meet to discuss your presentation [click here](https://prodduke-my.sharepoint.com/:x:/g/personal/mt324_duke_edu/ESK3DVYybKJDsKEa5VN_J8QBNd6BX6WTp3TTWaaQlehuSg?e=JEVafA) to sign up for a time slot.

## Project

- [Written report](https://sta199-fa20-002.netlify.app/project/#written-report) due Sun, Nov 15 at 11:59p
- [Video presentation](https://sta199-fa20-002.netlify.app/project/#presentation-slides) due Tue, Nov 17 at 11:59p
  - [Presentation slides](https://sta199-fa20-002.netlify.app/project/#presentation-slides)
- [Final repo](https://sta199-fa20-002.netlify.app/project/#project-repository) due Tue, Nov 17 at 11:59p
  - Includes codebook (a list of variables and their definitions) in the `data` folder
- [Watch and comment on presentations](https://sta199-fa20-002.netlify.app/project/#peer-feedback) Nov 18 - Nov 20
- Project peer review (will be emailed next week)

## Communicating results

[Tips on formatting and communicating results](https://sta199-fa20-002.netlify.app/project/#formatting--communication)


## IMDB Scrape TV shows

See solutions for the [IMDB TV web scraping](appex25-web-scrape-tv-solutions.R).


## Functions

### Exercise 1

Write a function called `center_measures` that returns the mean and median of a numeric vector. Below is sample code to help you get started. **Complete exercise 1 in the file `appex26-center-measures.R`.**


```r
nums <- c(10, 5, -1, 0, 4)
c(mean(nums), median(nums))
```

```
## [1] 3.6 4.0
```


```r
center_measures <- function() {
  

  
}
```

## Landscape art pieces

Our goal is to get the details for the [39 landscape art pieces](https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset=) in the University of Edinburgh Art Collection. **Complete exercises 2 - 6 in the file `appex26-scrape-art-info.R`.**

[**Click here for solutions to Ex 2-  6.**](appex26-scrape-art-info-SOLUTIONS.R)

## Exercise 2

Let's start by getting the title, artist, and link (URL) for the landscape art pieces. Fill in the code below to scrape this information for the first 10 landscape art pieces.


```r
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
```

### Exercise 3

Turn the code from Exercise 2 into a function that takes the URL as an input. Be sure to give your function a clear and informative name.

Test your function by scraping the title, artist and link for the first 10 landscape art pieces.


### Exercise 4

Let's automate the process, so we can produce a single data frame that contains the  the artist, title, and link for all 39 landscape art pieces.


```r
url_base <- "https://collections.ed.ac.uk/art/search/*/Classification:%22landscapes+%28representations%29+%7C%7C%7C+landscapes+%28representations%29%22?offset="
landscape_urls <- paste0(url_base, seq(0, 30, 10))
```

Use the appropriate `map_` function to apply the function from Exercise 3 to `landscape_urls`.

### Exercise 5

Below is the code for `scrape_art_info`, a function to scrape the details for each art piece. 


```r
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
```

Use the appropriate `map_` function to apply `scrape_art_info` to the data frame from the previous exercise to get the details for the 39 landscape art pieces. 

### Exercise 6

Save the data frame from the previous exercise as a .csv file.

<br> 

<hr> 
Exercises 2 - 6 are adapted from [Data Science in a Box](https://datasciencebox.org/).



