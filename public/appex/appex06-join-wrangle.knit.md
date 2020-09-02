---
title: "AE 06: Join data sets + data wrangling"
author: "Your Name"
date: "2020-09-01"
output: 
  html_document:
    theme: readable
---

## Announcements

- Lab 02 due today at 11:59p
- Start working with lab teams tomorrow
- Lab 01 grading + solutions

## Code styling + workflow 

- Avoid long lines of code. 
  - We should be able to see <u>all</u> of your code.
- Name code chunks.
- Knit, commit, and push regularly. 
  - Think about it like clicking to save regularly as you type a report.


## Questions? 


## Clone a repo + start a new project

Go to the `ae-06-[GITHUB USERNAME]` repo, clone it, and start a new project in RStudio. See the [Lab 01](https://sta199-fa20-002.netlify.app/labs/lab-01-hello-r.html#getting-started) for more detailed instructions about cloning a repo and starting a new project. 

## Configure git

Run the following code to configure Git. Fill in your GitHub username and the email address associated with your GitHub account. 


```r
library(usethis)
use_git_config(user.name= "your github username", user.email="your email")
```

## Practice with data joins and wrangling


```r
library(tidyverse)
fisheries <- read_csv("data/fisheries.csv")
continents <- read_csv("data/continents.csv")
```

The code below fills in the gaps from joining the data sets to creating the updated visualizations. 


```r
fisheries <- fisheries %>%
  filter(total > 100000) %>%
  left_join(continents) %>%
  mutate(
    continent = case_when(
      country == "Democratic Republic of the Congo" ~ "Africa",
      country == "Hong Kong"                        ~ "Asia",
      country == "Myanmar"                          ~ "Asia",
      TRUE                                          ~ continent
      ),
    aquaculture_perc = aquaculture / total
    )
```

**Note:** In each of these exercises you will need to set `eval=TRUE` in the code chunk header when you're 
ready to run the code for that exercise.

### Exercise 1.

Calculate the mean aquaculture percentage (we'll call it `mean_ap` for short) 
for continents in the fisheries data using the `summarise()` function in dplyr. 
Note that the function for calculating the mean is `mean()` in R.


```r
fisheries %>%                  # start with the fisheries data frame
  ___ %>%                      # group by continent
  ___(mean_ap = ___)           # calculate mean aquaculture
```

### Exercise 2.

Now expand your calculations to also calculate the minimum and maximum 
aquaculture percentage for continents in the fisheries data. Note that the 
functions for calculating minimum and maximum in R are `min()` and `max()`
respectively.


```r
fisheries %>%                  # start with the fisheries data frame
  # and the rest of the code goes here         
```

### Exercise 3.

Create a new data frame called `fisheries_summary` that calculates 
minimum, mean, and maximum aquaculture percentage for each continent in the 
fisheries data. 


```r
fisheries_summary <- fisheries %>%
  # you can reuse code from Exercise 2 here                        
```

### Exercise 4.

Take the `fisheries_summary_continent` data frame and order the results in descending 
order of mean aquaculture percentage.


```r
fisheries_summary %>%      # start with the fisheries_summary_continent data frame
  ___                                # order in descending order of mean_ap
```

### Exercise 5

The code below creates the graph you originally saw in the lecture slides. Change the theme to change the look of the graph. Choose one of the [complete themes](https://ggplot2.tidyverse.org/reference/ggtheme.html) found in the ggplot2 reference page.


```r
ggplot(fisheries_summary, 
       aes(y = fct_reorder(continent, mean_ap), x = mean_ap)) +
  geom_col() +
  scale_x_continuous(labels = label_percent(accuracy = 1)) +
  labs(
    x = "",
    y = "",
    title = "Average share of aquaculture by continent",
    subtitle = "out of total fisheries harvest, 2016",
    caption = "Source: bit.ly/2VrawTt"
  ) +
  theme_minimal() #change the theme!
```

<br><br>

<hr> 

*This exercise was modified from "Fisheries" in [Data Science in Box](https://datasciencebox.org/).*
