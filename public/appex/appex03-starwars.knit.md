---
title: "Visualizing Star Wars"
author: "Your Name"
date: "2020-08-23"
output: 
  html_document: 
    theme: readable
---



## Data analysis life cycle 

<div class="figure" style="text-align: center">
<img src="img/data-analysis-life-cycle.png" alt="Data science life cycle from [*R for Data Science*](https://r4ds.had.co.nz/) with modifications from *The Art of Statistics: How to Learn from Data*" width="70%" />
<p class="caption">Data science life cycle from [*R for Data Science*](https://r4ds.had.co.nz/) with modifications from *The Art of Statistics: How to Learn from Data*</p>
</div>


## Clone a repo + start a new project

- Click on the link provided in the slides to create your own private repo for this exercise.

- Go to the `ae-02-[GITHUB USERNAME]` repo on GitHub that you created

- Click on the green **Code** button, **Use HTTPS**, and click on the clipboard icon to copy the repo URL.

- Go to https://vm-manage.oit.duke.edu/containers and login with your Duke NetID and Password. Click to log into the Docker container **RStudio -  statistics application with Rmarkdown and knitr support**. You should now see the RStudio environment. 

- Go to *File* ➡️ *New Project* ➡️ *Version Control* ➡️ *Git*. 

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

### Step 1

Modify the following plot to change the color of all points to `"pink"`. Knit the document to observe the changes.


```r
ggplot(data = starwars, 
       mapping = aes(x = height, y = mass, color = gender, size = birth_year)) +
  geom_point(color = "#30509C") +
  labs(title = "_____" , size = "_____", x = "_____", y = "_____")
```

```
## Warning: Removed 51 rows containing missing values (geom_point).
```

<img src="appex03-starwars_files/figure-html/starwars-plot-1.png" width="672" />

### Step 2

Add labels for title, x and y axes, and size of points. Knit again. 

### Step 3

Fill in the code below to make a histogram of a numerical variable of your choice. Once you have modified the code, remove the option `eval = FALSE` from the code chunk header. Knit again to see the updates.

See the [ggplot2 reference page](https://ggplot2.tidyverse.org/reference/geom_histogram.html) for help to create histograms.


```r
ggplot(data = starwars, 
       mapping = aes(x = _____)) +
  ___________ +
  labs(title = "_____" , x = "_____", y = "_____")
```


### Step 4: Stretch goal!

1. Modify the histogram by adding `color = "blue"` inside of the `geom_XX` function. (Feel free to use a different color besides blue!) Knit to see the updated histogram. 

2. Now modify the histogram by adding `fill = "pink"` inside of the geom_XX function. (Feel free to use a different color besides pink!) Knit to see the updated histogram. 

3. What is the difference between `color` and `fill`? 

## Knit, commit, and push

1. If you made any changes since the last knit, knit again to get the final version of the AE. 

2. Check the box next to each document in the Git tab (this is called "staging" the changes).  Commit the changes you made using an simple and informative message.

2. Use the **green arrow** to push your changes to your repo on GitHub.

3. Check your repo on GitHub and see the updated files.

<hr> 

*This exercise was modified from "Starwars + Data visualization" in [Data Science in Box](https://datasciencebox.org/).*
