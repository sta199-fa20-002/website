---
title: "Meet the Toolkit"
author: "Prof. Maria Tackett"
output:
  xaringan::moon_reader:
    mathjax: "https://cdn.bootcss.com/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_HTMLorMML"
    css: "sta199-slides.css"
    logo: img/sta199-sticker-icon.png
    lib_dir: libs/font-awesome
    nature:
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false
      slideNumberFormat: "%current%" 
      ratio: "16:9"
---

layout: true

<div class="my-footer">
<span>
<a href="http://datasciencebox.org" target="_blank">datasciencebox.org</a>
</span>
</div> 

---



## Topics

- Reproducible data analysis 
- R and RStudio 
- R Markdown 
- Git and GitHub

---

class: center, middle

## Reproducible data analysis

---

## Reproducibility checklist

--

**Near-term goals:**

✔️ Are the tables and figures reproducible from the code and data?

✔️ Does the code actually do what you think it does?

✔️ In addition to what was done, is it clear **why** it was done?

--

**Long-term goals:**

✔️ Can the code be used for other data?

✔️ Can you extend the code to do other things?
---

## Toolkit

<img src="img/02/toolkit.png" width="50%" style="display: block; margin: auto;" />


- **Scriptability** $\rightarrow$ R

- **Literate programming** (code, narrative, output in one place) $\rightarrow$ R Markdown

- **Version control** $\rightarrow$ Git / GitHub

---

class: center, middle

# R and RStudio

---

## What is R and RStudio? 

- R is a statistical programming language

- RStudio is a convenient interface for R (an integrated development environment, IDE)

- At its simplest:<sup>*</sup>
    - R is like a car’s engine
    - RStudio is like a car’s dashboard

<img src="img/02/engine-dashboard.png" width="70%" style="display: block; margin: auto;" />

.footnote[
*Source: [Modern Dive](https://moderndive.com/)
]

---

## R essentials (a short list)

- **Functions** are (most often) verbs, followed by what they will be applied to in parentheses:


```r
do_this(to_this)
do_that(to_this, to_that, with_those)
```

--

- **Columns** (variables) in data frames are accessed with `$`:


```r
dataframe$var_name
```

--

- **Packages** are installed with the `install.packages` function and loaded with the `library` function, once per session:


```r
install.packages("package_name")
library(package_name)
```

---

## tidyverse

.pull-left[

<div class="figure" style="text-align: center">
<img src="img/02/tidyverse-packages.png" alt="Image from [Teaching in the Tidyverse 2020](https://education.rstudio.com/blog/2020/07/teaching-the-tidyverse-in-2020-part-1-getting-started/)" width="40%" />
<p class="caption">Image from [Teaching in the Tidyverse 2020](https://education.rstudio.com/blog/2020/07/teaching-the-tidyverse-in-2020-part-1-getting-started/)</p>
</div>
]

.pull-right[
- The [tidyverse](https://www.tidyverse.org/) is an **opinionated** collection of R packages designed for data science. 

- All packages share an underlying philosophy and a common grammar. 
]

---

class: center, middle

# R Markdown

---


## R Markdown

- Fully reproducible reports -- the analysis is run from the beginning each time you knit

- Simple [Markdown syntax](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf) for text

- Code goes in chunks, defined by three backticks, narrative goes outside of chunks

---

## How will we use R Markdown?

- Every assignment / lab / project / etc. is an R Markdown document

- You'll always have a template R Markdown document to start with

- The amount of scaffolding in the template will decrease over the semester

---

class: center, middle

# Git and GitHub

---

## Version control

- We introduced GitHub as a platform for collaboration

- But it's much more than that...

- It's actually designed for version control

---

## What is versioning? 

<br><br>
<img src="img/02/lego-steps.png" width="70%" style="display: block; margin: auto;" />

---

## What is versioning? 

with human readable messages

<img src="img/02/lego-steps-commit-messages.png" width="70%" style="display: block; margin: auto;" />

---

## Why do we need version control?

<img src="img/02/phd_comics_vc.gif" width="50%" style="display: block; margin: auto;" />

---

<br>

<img src="img/02/git-github.png" width="70%" style="display: block; margin: auto;" />

--

- **Git** is a version control system -- like “Track Changes” features from Microsoft Word. 

--

- **GitHub** is the home for your Git-based projects on the internet (like DropBox but much better).

--

- There are a lot of Git commands and very few people know them all. 99% of the time you will use git to add, commit, push, and pull.



---

## Git and GitHub tips

- We will be doing git things and interfacing with GitHub through RStudio
    - If you Google for help, skip any methods for using git through the command line. 

--

- There is a great resource for working with git and R: [happygitwithr.com](http://happygitwithr.com/).
    - Some of the content in there is beyond the scope of this course, but it's a good place to look for help.

---

## Integrating RStudio Cloud with GitHub

Each assignment, application exercise, and lab in this course will have an associated link used to create a private **repository** on the class organization page. Today's link is given at [https://classroom.github.com/a/edJb94hx](https://classroom.github.com/a/edJb94hx).

In this demo, we will use R Markdown to make a reproducible report regarding the Flint water data. Some things to keep in mind from the reading:

- The "action" level for lead is 15 parts per billion (ppb)
- The MDEQ recommended flushing of pipes for at least five minutes

---

## R Markdown tips

**Resources**
- [R Markdown cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf)
- Markdown Quick Reference: 
    - `Help -> Markdown Quick Reference`
<br><br>
--


**Remember**: The workspace of the R Markdown document is <u>separate</u> from the console

---

## Recap 

Can you answer these questions? 

- What is a reproducible data analysis, and why is it important?
- What is version control, and why is it important?
- What is R vs. RStudio? 
- What is git vs. GitHub? 
