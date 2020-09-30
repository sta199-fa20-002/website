---
title: "AE 14: Pokemon"
date: "2020-09-30"
output: 
  html_document:
    theme: readable
---

## Announcements 

### Tea with a TA 

Hang out with the TAs from STA 199! This is a casual conversation and a fun opportunity to meet the members of the STA 199 teaching team. The only rule is these can't turn into office hours! 

Tea with a TA counts as a statistics experience.

- **Matty Pahren**, October 2 1p - 2p
  - [Click here](https://forms.gle/CWs28UiEYYjSrhWR8) to sign up. Zoom details will be emailed before the event.

- **Ezinne Nwankwo**, October 8, 2:30p - 3:30p
  - [Click here](https://forms.gle/EPdQBFigj93JYTET7) to sign up. Zoom details will be emailed before the event.

## Zoom poll 

## Questions from video? 

## Comparing CLT- & simulation- based inference

What is similar, and what is different, between CLT based test of means vs. simulation based test?

## CLT-based inference with Pokemon


```r
library(tidyverse)
library(infer)
```

We will be using the `pokemon` dataset, which contains information about 45 randomly selected Pokemon (from all generations). You may load in the dataset with the following code: 


```r
pokemon <- read_csv("data/pokemon.csv")
```

**Use the infer package to answer the following exercises.**

### Exercise 1

Construct and interpret a 95% confidence interval for the mean height in meters (`height_m`) of Pokemon species by using the Central Limit Theorem. 

### Exercise 2

The average height of a human is 1.65 meters. Evaluate whether a randomly selected Pokemon species has a *different* mean height by using the Central Limit Theorem. 

In doing so, state your null and alternative hypotheses, the
distribution of your test statistic under the null hypothesis, your p-value, decision, and conclusion in context of the research problem.

### Exercise 3

Now evaluate whether a randomly-selected Pokemon species has a *lower* mean height by using the Central Limit Theorem. In doing so, state your null and alternative hypotheses, the distribution of your test statistic under the null hypothesis, your p-value, decision, and conclusion in context of the research problem.

### Exercise 4

Suppose the true mean height among Pokemon species is 1.4 meters. In your conclusions from Exercises 2 and 3, did you make the correct decision, a Type 1 error, or a Type 2 error? Explain.
