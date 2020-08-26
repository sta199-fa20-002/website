---
title: "Airbnbs in Edinburgh"
author: "Your Name"
date: "2020-08-26"
output: 
  html_document:
    theme: readable
---


```r
library(tidyverse)
```

## Announcements

- Lab 01 due today at 11:59p
- Email (see syllabus) 
- Introduce George, the R support TA

## Questions? 

## Identify variable type (Zoom poll)

- Favorite food
- Number of classes you're taking this semester
- Zip code

## The way data is displayed matters

<div class="figure" style="text-align: center">
<img src="img/barplots.jpeg" alt="Source: [Twitter](https://twitter.com/CoralTKrueger/status/1296425438403796992)" width="70%" />
<p class="caption">Source: [Twitter](https://twitter.com/CoralTKrueger/status/1296425438403796992)</p>
</div>


## Clone a repo + start a new project

- Click on the link provided in the slides to create your own private repo for this exercise.

- Go to the `ae-04-[GITHUB USERNAME]` repo on GitHub that you created

- Click on the green **Code** button, **Use HTTPS**, and click on the clipboard icon to copy the repo URL.

- Go to https://vm-manage.oit.duke.edu/containers and login with your Duke NetID and Password. Click to log into the Docker container **RStudio -  statistics application with Rmarkdown and knitr support**. You should now see the RStudio environment. 

- Go to *File* ->  *New Project* -> *Version Control* -> *Git*. 

- Copy and paste the URL of your assignment repo into the dialog box *Repository URL*. You can leave *Project Directory Name* empty. It will default to the name of the GitHub repo.

- Click *Create Project*, and the files from your GitHub repo will be displayed the *Files* pane in RStudio. 

### Configure git

Before we start the exercise, we need to configure your git so that RStudio can communicate with GitHub. This requires two pieces of information: your email address and your name.

Type the following lines of code in the **Console** in RStudio filling in your GitHub username and email address associated with your GitHub account.


```r
library(usethis)
use_git_config(user.name= "github username", user.email="your email")
```

**RStudio and GitHub can now communicate with each other and you are ready to do the exercise!**

## Practice with ggplot

The data contains information about Airbnb listings in Edinburgh Scotland. The data originally come from [Kaggle](https://www.kaggle.com/thoroc/edinburgh-inside-airbnb/version/2), and it has been modified for this exercise. 

Use the code below to load the data from the .csv file. 


```r
edibnb <- read_csv("data/edibnb.csv")
```

### Part 0

The dataset you’ll be using is called `edibnb`. Run `View(edibnb)` in the **console** to view the data in the data viewer. What does each row in the dataset represent?

### Part 1

The `edibnb` data set set has 13245 observations (rows).

How many columns (variables) does the dataset have? Instead of hard coding the number in your answer, use the function `ncol()` to write your answer in inline code. *Hint: Use the statement above as a guide.*

Knit to see the updates.

### Part 2

Fill in the code below to create a histogram to display the distribution of `price`.  Once you have modified the code, remove the option `eval = FALSE` from the code chunk header. Knit again to see the updates.


```r
ggplot(data = ___, mapping = aes(x = ___)) +
  geom_histogram()
```


### Part 3

Now let's look at the distribution of price for each neighborhood. To do so, we will make a faceted histogram where each facet represents a neighborhood and displays the distribution of price for that neighborhood.

Fill in the code below to create the faceted histogram with informative labels. Once you have modified the code, remove the option `eval = FALSE` from the code chunk header. Knit again to see the updates.

*Hint: Run `names(edibnb)` in the <b>console</b> to get a list of variable names. Note how the variable for neighborhood is spelled in the data set.*


```r
ggplot(data = ___, mapping = aes(x = ___)) +
  geom_histogram() +
  facet_wrap(~___) +
  labs(x = "______", 
      title = "_______", 
      subtitle = "Faceted by ______")
```

### Part 4

How would you describe the distribution of price in general? How do neighborhoods compare to each other in terms of price?

## Knit, commit, and push

1. If you made any changes since the last knit, knit again to get the final version of the AE. 

2. Check the box next to each document in the Git tab (this is called "staging" the changes).  Commit the changes you made using an simple and informative message.

2. Use the **green arrow** to push your changes to your repo on GitHub.

3. Check your repo on GitHub and see the updated files.

## Resources 

- [ggplot2 reference page](https://ggplot2.tidyverse.org/reference/geom_histogram.html) 
- [ggplot2 cheat sheet](https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf)


<br><br>

<hr> 

*This exercise was modified from Hotels in Edinburgh in [Data Science in Box](https://datasciencebox.org/).*
