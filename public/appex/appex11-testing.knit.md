---
title: "AE 11: Hypothesis Testing"
subtitle: "Part 1"
date: "2020-09-21"
output: 
  html_document:
    theme: readable
---




## Announcements

- Lab 05 due Wed at 11:59p
- No lab this week
- Exam 01: Thu 9a - Sun 11:59p
  - Weeks 01 - 04
- Introducing [statistics experiences](https://sta199-fa20-002.netlify.app/hw/stat-experience.html) 
- [StatSci Majors Union events](https://sta199-fa20-002.netlify.app/schedule/week-06/)

## Questions from video? 

## Hypothesis testing review

$$H_0: p = 0.1 \text{ vs }H_a: p \neq 0.1$$



**Generate the null distribution**


```r
null_dist <- organ_donor %>%
  specify(response = outcome, success = "complication") %>% #<<
  hypothesize(null = "point", 
              p = c("complication" = 0.10, "no complication" = 0.90) 
              ) %>% 
  generate(reps = 100, type = "simulate") %>% 
  calculate(stat = "prop")
```

**Calculate p-value**


```r
null_dist %>%
  filter(stat <= (3/62)) %>%
  summarise(p_value = n()/nrow(null_dist))
```

```
## # A tibble: 1 x 1
##   p_value
##     <dbl>
## 1    0.18
```


## Clone a repo + start a new project

Click on the link provided in the slides to create your own private repo for 
this exercise, and configure git.

We will be using the `asheville` dataset. You may load in the dataset with the
following code (be sure to set `eval` to be `TRUE` in the following R chunk!):


```r
library(tidyverse)
library(infer)
```




### Exercise 1 (Zoom poll)

Suppose you are interested in whether the mean price per guest per night is actually less than $80. Choose the correct null and alternative hypotheses.

a. $H_0: \mu = 80 \text{ vs. }H_a: \mu \neq 80$
b. $H_0: \mu = 80 \text{ vs. }H_a: \mu < 80$
c. $H_0: \mu = 80 \text{ vs. }H_a: \mu > 80$
d. $H_0: \bar{x} = 80 \text{ vs. }H_a: \bar{x}  \neq 80$
e. $H_0: \bar{x} = 80 \text{ vs. }H_a: \bar{x}  < 80$
f. $H_0: \bar{x} = 80 \text{ vs. }H_a: \bar{x}  > 80$


### Exercise 2

Let's use simulation-based methods to conduct the hypothesis test specified in Exercise 1. We'll start by generating the null distribution. 

Fill in the code and uncomment the lines below to generate the null distribution. 


```r
set.seed(092120)
```



```r
#null_dist <- asheville %>%
  #specify(response = ______) %>%
  #hypothesize(null = ______, mu = ______) %>%
  #generate(reps = 100, type = "bootstrap") %>%
  #calculate(stat = _____)
```

### Exercise 3

Use the null distribution from Exercise 2 to calculate the p-value. 


```r
mean_ppg <- asheville %>% 
  summarise(mean_ppg = mean(ppg)) %>%
  pull()
```


```r
#null_dist %>%
  #filter(______) %>%
  #summarise(p_value = ______)
```

## Exercise 4 

Use the p-value to make your conclusion using a significance level of 0.05. Remember, the conclusion has 3 components 

- How the p-value compare to the significance level 
- The decision you make with respect to the hypotheses (reject $H_0$ /fail to reject $H_0$)
- The conclusion in the context of the research problem. 

### Exercise 5

Suppose you are interested in whether the **median** price per guest per night is
equal to or less than $80. Carry out a similar analysis to that
undertaken in Exercises 1 - 4 to test these hypotheses. 

