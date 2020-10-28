---
title: "Project Peer Review"
subtitle: "Initial feedback due Oct 29 at 11:59p; Final feedback due Nov 5 at 11:59p"
output: 
  tufte::tufte_html:
    highlight: pygments
    css: "sta199-labs.css"
link-citations: yes
---



Critically reviewing others' work is a crucial part of the scientific process,
and STA 199 is no exception. Each group has been given read access to another group's repo to review and provide feedback on their project draft. This review is intended to
help you create a high quality final project, as well as give you experience  reading and constructively critiquing the work of others. 

To ensure the group has enough time to start incorporating feedback ,you should work on the peer review during lab and submit comments by **Thursday, Oct 29 at 11:59p**. If you do not finish during lab, you can submit additional comments until **Thu, Nov 5.** Note that you are expected to submit the majority of the comments on Oct 29

# Getting started 

[Click here](https://prodduke-my.sharepoint.com/:x:/g/personal/mt324_duke_edu/EV-0jLAxH11ApRlC6qWEzLcBUyCJromydIWF5EECuC_1vg?e=J9Nqbg) to see which project you're reviewing. 

Then, search your GitHub repositories for `project` and you should see the repo for the project you're reviewing. 

Open the repo and follow the usual steps to clone into RStudio. You have read access to this repository but will not be able to push any changes.


# Reviewing the draft

Carefully read the project draft, considering the questions below as you read it. 

Once everyone in the group has read the draft, submit your responses to the peer review questions using "Issues" in the GitHub repo. 

Post a new issue for each section of the peer review. In the issue, copy the peer review questions, and then type your responses.  **Every team member should post at least one issue.**

To post an issue, go to the project repo on GitHub and click "Issues". For each comment or
critique on the written report and data analysis, click "New Issue". Provide 
an informative issue title and then a description outlining your concerns, 
comments, and any suggested changes. Click "Submit new issue". Do this
for every major comment or critique (do not submit a single issue with all 
of your feedback). 

# Peer review questions

For each question 
- Copy the question in the GitHub issue and answer "Yes", "No" or "Somewhat". 
- If you answer "No" or "Somewhat" provide an explanation addressing any problems, i.e. why you didn't respond "Yes".

[Click here](peer-review.md) for an .md file of the questions to make them easier to copy and paste in the GitHub Issue. 

## Issue 1: Introduction + Data

- Is the research question and goal of the report clearly stated? 
- Does the introduction provide appropriate background context and motivation for a general reader?
- Is the source of the data stated with an appropriate citation? 
- Is it clear when and how the data was originally collected?
- Are the observations and relevant variables described?
- Include any additional comments or suggestions on the introduction and data description. 

## Issue 2: Exploratory data analysis 

- Is the data cleaning and data wrangling clearly described? This includes dealing with missing data, creating new variables, etc.
- Do the visualizations correspond to the to the stated research question? 
- Are visualizations effective and do they follow the visualization principles
we have discussed in STA 199? This includes using plots that are appropriate for the data, having proper axis labels, titles, etc. 
- Is the choice of statistical method justified?
- Include any additional comments or suggestions for the exploratory data analysis. 

## Issue 3: Methodology + Results

- Are the chosen methods (e.g. hypothesis testing, confidence intervals, models, etc.) for answering the research question appropriate for the research context and type of data?
- Is the research question answered accurately and effectively? 
- Is the answer to the research question summarized and supported by statistical arguments?
- Are limitations of the analysis clearly outlined?

## Issue 4: Writing + Reproducibility

- Is the writing clear (including elements like spelling, grammar, etc)? Are you able to follow what is being done?
- Is the coding written clearly and generally using tidyverse syntax? Are you able to follow precisely what is being done? *Use the .Rmd file to assess this question if the code is suppressed in the PDF.*
- Knit the .Rmd file. Are you able to reproduce all aspects of the report, including output, 
visualizations, etc? This includes (1) being able to knit the document and (2) obtaining the same PDF as the original PDF. 
- Is the report well-formatted and readable (including layout but also only 
reporting relevant output, with no extraneous code, visuals, etc)?
- Have they appropriate outlined the next steps with gaps clearly defined?
- What is one thing the group has done well? what is one suggestion you have for the group going forward? 


# Submission

The peer review will be graded on the extent to which it comprehensively and
constructively addresses the components of the partner team's report: the 
research context and motivation, exploratory data analysis, reproducibility,
and any inference, modeling, or conclusions. 

You will be graded based on the submitted issues on GitHub.

