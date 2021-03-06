---
title: "AE 15: Parkinson's disease"
date: "2020-10-04"
output: 
  html_document:
    theme: readable
---

## Announcements 

### Tea with a TA 

Hang out with the TAs from STA 199! This is a casual conversation and a fun opportunity to meet the members of the STA 199 teaching team. The only rule is these can't turn into office hours! 

Tea with a TA counts as a statistics experience.

- **Ezinne Nwankwo**, October 8, 2:30p - 3:30p
  - [Click here](https://forms.gle/EPdQBFigj93JYTET7) to sign up. Zoom details will be emailed before the event.

## Other announcements

- Team feedback #1 is due on **Wednesday, Oct 7 at 11:59p**. You should have received an email from Teammates with the link to fill out the feedback. If you did not receive the email (and it's not in your spam folder), please email Professor Tackett. *Team feedback counts as part of the participation grade.*
- If you have playing cards, please bring them to Wednesday's live lecture session for an in-class activity.

## Questions from the video? 

### Clone a repo + start a new project

- Clone the **ae-15** repo and start a new project in RStudio. 

- Configure git by running the code below in the console. Be sure to fill in your GitHub username and email associated with your Github account. 


```r
library(usethis)
use_git_config(user.name= "your github username", user.email="your email")
```


```r
library(tidyverse)
library(infer)

parkinsons <- read_csv("data/parkinsons.csv")
```

### Exercise 1

Construct and interpret a 95% confidence interval for the difference in mean shimmer (in dB) between the PD and non-PD individuals using a simulation-based approach.


### Exercise 2

Repeat Exercise 1 using a CLT-based approach.

### Exercise 3

Is there evidence that there is a difference in shimmer between these two groups? Perform a formal statistical hypothesis test using a simulation-based method to answer this question. Include the hypotheses, null distribution, p-value and conclusion stated in the context of the research problem. 


### Exercise 4

Repeat Exercise 3 using the Central Limit Theorem.
