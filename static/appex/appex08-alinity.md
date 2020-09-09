AE 08: Alinity COVID-19 Test
================
Your Name
2020-09-08

## Announcements

  - Lab 03 due today at 11:59p
  - [HW 01](https://sta199-fa20-002.netlify.app/hw/hw-01.html) due Sep
    16 at 11:59p
      - **hw-01** available after class

## Questions?

## Clone a repo + start a new project

Go to the `ae-08-[GITHUB USERNAME]` repo, clone it, and start a new
project in RStudio. See the
[Lab 01](https://sta199-fa20-002.netlify.app/labs/lab-01-hello-r.html#getting-started)
for more detailed instructions about cloning a repo and starting a new
project.

## Configure git

Run the following code to configure Git. Fill in your GitHub username
and the email address associated with your GitHub account.

``` r
library(usethis)
use_git_config(user.name = "your github username", user.email ="your email")
```

``` r
library(tidyverse)
```

**Use R as a calculator for the exercises in this AE.**

## Warm-up

Suppose in a class that 30% of students were Pratt students and 70% were
Trinity. 10% of Pratt students are vegetarian and 5% of Trinity students
are vegetarian.

### Exercise 1

What is the probability that a randomly selected student in this class
is vegetarian?

### Exercise 2

Given that a student is vegetarian, what is the probability that they
are in Pratt?

## The Abbott Alinity Test

The global coronavirus pandemic illustrates the need for accurate
testing of COVID-19, as its extreme infectivity poses a significant
public health threat. Due to the time-sensitive nature of the situation,
the FDA has enacted emergency authorization of a number of serological
tests for COVID-19. Full details of these tests may be found on its
website
[here](https://www.fda.gov/medical-devices/coronavirus-disease-2019-covid-19-emergency-use-authorizations-medical-devices/eua-authorized-serology-test-performance).

The Abbott Alinity test has an estimated sensitivity of 100% and
specificity of 99%.

### Exercise 3

Suppose the prevalence of COVID-19 in the general population is 2%. What
are the positive and negative predictive values of the Abbott Alinity
test?

### Exercise 4

Now suppose the prevalence of COVID-19 in the general population is 8%.
Repeat the same calculations as in Exercise 3. Can you reuse code from
Exercise 3 somehow?

### Exercise 5

In the context of COVID-19, would you prefer to have a test with perfect
sensitivity and good specificity or would you rather have a test with
perfect specificity and good sensitivity? Explain your answer.
