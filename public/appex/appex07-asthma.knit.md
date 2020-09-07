---
title: "AE 07: Asthma"
date: "2020-09-07"
output: 
  html_document:
    theme: readable
---




## Announcements

- Lab 03 due Wednesday  at 11:59p

## Questions about Lab 03 and teamwork? 

## Questions from Lec 07 video? 

## Using a Venn Diagram

<img src="img/venn-diagram.png" width="632" style="display: block; margin: auto;" />


## Coffee vs. Mortality (from Lec 07 video)


|                           | Did not die| Died|
|:--------------------------|-----------:|----:|
|Does not drink coffee      |        5438| 1039|
|Drinks coffee occasionally |       29712| 4440|
|Drinks coffee regularly    |       24934| 3601|

Define events *A* = died and *B* = non-coffee drinker. Calculate the following for a randomly selected person in the cohort:

- $P(A)$
- $P(B)$
- $P(A \text{ and } B)$
- $P(A \text{ or } B)$
- $P(A \text{ or } B)$

## Clone a repo + start a new project

Go to the `ae-07-[GITHUB USERNAME]` repo, clone it, and start a new project in RStudio. See the [Lab 01](https://sta199-fa20-002.netlify.app/labs/lab-01-hello-r.html#getting-started) for more detailed instructions about cloning a repo and starting a new project. 

## Configure git

Run the following code to configure Git. Fill in your GitHub username and the email address associated with your GitHub account. 


```r
library(usethis)
use_git_config(user.name = "your github username", user.email ="your email")
```


```r
library(tidyverse)
```

The following tables are representative of the SIROCCO trial (Bleecker et al.,
2016), which examined the safety and efficacy of benralizumab for patients with 
severe, poorly controlled asthma. The tables present baseline demographic
information for patients enrolled in the file. **There were 1204 patients in this study.**

You may knit the document to see the tables. "Q4W" means "every four weeks" and 
"Q8W" means "every eight weeks.


|                 | Female| Male|
|:----------------|------:|----:|
|Benralizumab Q4W |    274|  124|
|Benralizumab Q8W |    253|  146|
|Placebo          |    269|  138|



|                 | Asian| Black| Other| White|
|:----------------|-----:|-----:|-----:|-----:|
|Benralizumab Q4W |    54|    15|    44|   285|
|Benralizumab Q8W |    50|    15|    47|   287|
|Placebo          |    50|    16|    39|   302|

Answer the following questions using the table provided above (knit this
document first to see the tables!). If a probability cannot be calculated, indicate what 
additional information is needed in order to do so.

- What is the probability that a randomly selected patient in the trial was 
assigned to placebo?
- What is the probability that a randomly selected patient in the trial was 
male?
- What is the probability that a randomly selected patient in the trial was 
assigned to placebo **or** was male?
- What is the probability that a randomly assigned patient in the trial was 
assigned to placebo **and** was male?
- What is the probability that a randomly assigned patient in the trial was
male **or** was white?
