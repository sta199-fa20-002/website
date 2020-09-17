---
title: "Lab 05 - Bootstrap estimation"
subtitle: "due Wed, Sep 23 at 11:59p"
output: 
  tufte::tufte_html:
    highlight: pygments
    css: "sta199-labs.css"
    toc: true
    toc_depth: 2
link-citations: yes
---



# Introduction and Data

The goal of today's lab is to practice creating bootstrap confidence intervals,
and visualizing bootstrap distributions. Once again, 
this is a team lab - keep the team workflow in mind when completing the
assignment and keep in mind that all lab members must meaningfully contribute to
all lab components. 

# Tips 

- Use a small number of reps (about 100) as you write and test out your code. Once you have finalized all of your code, increase the number of reps to at least 1000 (10,000 if possible) to produce your final results. 
- Write your code and narrative in a reproducible way, so you can easily change the number of reps. See [this example Rmd file](Reproducibility.Rmd) for tips on making your code more reproducible.
- All team members must meaningfully commit 
and push to receive full credit.
- There is only one
submission should be made per team. Make sure every team member's name is included in the submission on Gradescope. Points will be deducted if every team member's name is not linked to the submission on Gradescope.

# The data

The data for today's lab may be found by cloning your **lab-05-durham-**  repository available in the [GitHub course organization](https://www.github.com/sta199-fa20-002).

Today's data comes from the City of Durham's annual Resident Satisfaction 
Survey for 2018 (more information accessible 
[**here**](https://www.dconc.gov/government/departments-a-e/county-manager/city-county-resident-survey)). In particular, the `durham_survey` dataset contains 
data from 608 Durham residents on the survey questions below. Assume that the
data are representative of Durham residents and may be generalized to the wider
population of all city residents.

Any variable starting with `quality` refers to the perceived quality of the
listed variable, with 1 being "highly dissatisfied," 3 being "neutral", and
5 being "highly satisfied." A value of 9 indicates that the subject responded
with N/A.

You may load in the data with the following code, where `____` should be
replaced by a meaningful name of your choosing:


```r
library(tidyverse)
____ <- read_csv("data/durham_survey.csv")
```

# Exercises

Write all R code according to the style guidelines discussed in class. 

<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote"><span style="display: block;"><strong>Hint</strong>: be careful with how missing values are coded in this survey. As well, don’t forget to set a seed in order to ensure reproducibility!</span></span>

1. Provide a point estimate of the mean satisfaction with the fire department 
(`quality_fire`) among Durham residents in 2018.

2. Construct a 95%  bootstrap interval for the mean satisfaction with
the fire department among durham residents in 2018. Use at least 1,000 bootstrap
samples. Make sure your interval is *reproducible*.

3. Visualize the bootstrap distribution and your confidence interval from 
Exercise 2. Interpret the confidence interval you constructed.

4. Provide a point estimate of the *proportion* of the respondents in the 
survey who were satisfied (score of 4 or 5) with the quality of parks and
recreation (`quality_parks_rec`) in Durham. 

<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote"><span style="display: block;"><strong>Hint</strong>: see if you can reuse parts of code used in previous exercises.</span></span>

5. Construct a **99%**  bootstrap interval for the proportion of 
respondents in the survey who were satisfied with the quality of parks and 
recreation in Durham. Make sure your interval is *reproducible*.

6. Visualize the bootstrap distribution and your confidence interval from 
Exercise 5. Interpret the confidence interval you constructed.

<label for="tufte-mn-" class="margin-toggle">&#8853;</label><input type="checkbox" id="tufte-mn-" class="margin-toggle"><span class="marginnote"><span style="display: block;"><strong>Hint</strong>: If <em>either</em> of the two scores is missing, then that observation cannot be used to calculate the correlation.</span></span>

7. Provide a point estimate of the *correlation* between survey scores of
perceived quality of bike paths (`quality_bike_path`) and the perceived quality 
of pedestrian paths (`quality_ped_path`). 

8. Construct a 95% bootstrap interval for the correlation between
survey responses for perceived quality of bike paths and pedestrian paths.


9. Construct a **99%** bootstrap interval using the bootstrap distribution from Exercise 8. 
  
    How does the 99% bootstrap interval compare to the 95% bootstrap interval calculated in the previous exercise?
  
    In general, how does the bootstrap interval change when the confidence level increases?

# Submission

Knit to PDF to create a PDF document. Knit and commit all remaining changes, 
and push your work to GitHub. Make sure all files are updated on your GitHub 
repo.

Please only upload your PDF document to Gradescope. Associate the "Overall"
graded section with the first page of your PDF, and mark where each answer is 
to the exercises. If any answer spans multiple pages, then mark all pages.

**Make sure every team member's name is included in the submission on Gradescope. Points will be deducted if every team member's name is not linked to the submission on Gradescope.**
