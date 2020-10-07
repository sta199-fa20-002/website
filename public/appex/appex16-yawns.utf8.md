---
title: "AE 16: Is yawning contagious?"
date: "2020-10-07"
output: 
  html_document:
    theme: readable
    toc: true
    toc_depth: 2
---

## Announcements 

### Tea with a TA 

Hang out with the TAs from STA 199! This is a casual conversation and a fun opportunity to meet the members of the STA 199 teaching team. The only rule is these can't turn into office hours! 

Tea with a TA counts as a statistics experience.

- **Ezinne Nwankwo**, October 8, 2:30p - 3:30p
  - [Click here](https://forms.gle/EPdQBFigj93JYTET7) to sign up. Zoom details will be emailed before the event.

### Other announcements

- Team feedback #1 is due **today at 11:59p**. You should have received an email from Teammates with the link to fill out the feedback. If you did not receive the email (and it's not in your spam folder), please email Professor Tackett. *Team feedback counts as part of the participation grade.*
- Lab 06 due on **today at 11:59p**.
- Project proposal due on **Fri, Oct 9 at 11:59p**
- [Uconn Sports Analytics Symposium](https://statds.org/events/ucsas2020/index.html), Sat, Oct 10. $5 registration fee.

## Schedule udpate 

🍁 Happy STA 199 Fall break! 🍁

- Tomorrow's lab: Mid-semester feedback + Project proposal work day
- HW 02 will be assigned on **Monday, October 12**
- **No lecture meeting on Monday** - time to work on the statistics experience (due Oct 18)
- Office hours will be scheduled as usual

## Questions from the video? 

## Is yawning contagious?[^ds]

Let's watch the experiment from [*Mythbusters*](https://www.discovery.com/tv-shows/mythbusters/videos/is-yawning-contagious-2). 

We'll use simulation-based inference to assess the claim that yawning is contagious, i.e. 

$$H_0: p_t = p_c \\
H_a: p_t > p_c$$

We will simulate the null distribution using playing cards and permutation! 

## Simulation with playing cards 

### Simulation set up

1. A regular deck of cards is comprised of 52 cards: 
    - Face cards: 4 aces, 4 jacks, 4 queens, and 4 kings
    - Non-face cards: 4 of numbers 2-10

2. Take out two aces from the deck of cards and set them aside.

3. Take out Jokers if you have them.

4. The remaining 50 playing cards to represent each participant in the study:
    - 14 face cards represent the people who yawn
    - 36 non-face cards represent the people who don't yawn.

### Running the simulation 

1. Shuffle the 50 cards at least 7 times[^1] to ensure that the cards counted out are from a random process.

2. Count out the top 16 cards and set them aside. These cards represent the people in the control group. Count the number of face cards. This represents the number of people who yawned in the control group. 

3. Out of the remaining 34 cards (treatment group) count the number of face cards. This represents the number of people who yawned in the treatment group. 

4. Calculate the difference in proportions of yawners, $\hat{p}_{treatment} - \hat{p}_{control}$. 

5. [Click here](https://forms.gle/RPvcghskHcY4wsjNA) to report the difference you find.

If you finish early, repeat steps 1 - 5 to run the simulation again! 

## Simulation using online playing cards 

### Simulation set up

**Have one group member share their screen so you can do the simulation as a group.**

1. Go to https://www.random.org/playing-cards/. 
2. Under "Step 1" select to Draw **16** cards from **1** shuffled deck. 
3. Under "Step 2", uncheck **Aces** and check **Black Joker** and **Red Joker**.

Your selections should look like this: 

<img src="img/card-sim-selections.png" width="1112" style="display: block; margin: auto;" />


### Running the Simulation

1. Under "Step 4", click **Draw cards.**

2. You will see page with 16 randomly drawn cards. Your page will be similar to the one here: 

<img src="img/card-sim-draw.png" width="1112" style="display: block; margin: auto;" />

3.  These 16 cards represent the people in the control group. Count the number of face cards. This represents the number of people who yawned in the control group. 

  *In my example, there are 3 face cards in the control group.*

3. The remaining 34 cards that were drawn are the treatment group. Calculate the number who yawned in the treatment group as **14 - face cards in control group**. This represents the number of people who yawned in the treatment group.
  
  *In my example, there are 11 (14 - 3) face cards in the treatment group.*

4. Calculate the difference in proportions of yawners, $\hat{p}_{treatment} - \hat{p}_{control}$. 

5. [Click here](https://forms.gle/RPvcghskHcY4wsjNA) to report the difference you find.

Repeat steps 1 - 5 to run the simulation again! Run the simulation at least 3 times.


## Let's look at the results 

- Clone the **ae-16** repo and start a new project in RStudio. 
- Configure git by running the code below in the console. Be sure to fill in your GitHub username and email associated with your Github account. 


```r
library(usethis)
use_git_config(user.name= "your github username", user.email="your email")
```


```r
library(tidyverse)
library(infer)
```


### Exercise 1

**Remove `eval = F` from the code chunk header to see your simulation results!**


```r
sim_data <- read_csv("https://sta199-fa20-002.netlify.app/appex/data/yawn-sim.csv")
```


```r
ggplot(data = sim_data, mapping = aes(x = diff_in_prop)) +
  geom_histogram(binwidth = 0.05) + 
  labs(title = "Your Results: Difference in Proportion of Yawners")
```

What is the approximate center of the distribution? Is this what you expected? Why or why not?

The observed difference in proportions from the Mythbusters episode is 0.0441. Based on your simulated distribution, is there evidence that yawning is contagious? 

### Exercise 2 

Let's use the data from the *Mythbusters* episode. Based on their experiment, is there evidence that yawning is contagious? 

Evaluate this question using a simulation based approach. State the null and alternative hypotheses, the p-value, and conclusion in the context of the research problem.  


```r
# yawn data from Mythbusters
yawn <- read_csv("https://sta199-fa20-002.netlify.app/appex/data/yawn.csv")
```

### Exercise 3

Suppose we want to evaluate whether the proportion of yawners in the treatment group is equal to the proportion of yawners in the control group, i.e. if yawning and seeing someone yawn are independent.  

Use a confidence interval to evaluate this claim. Construct the confidence interval using a simulation-based method.

<hr>

[^1]: [ In Shuffling Cards, 7 Is Winning Number](http://www.dartmouth.edu/~chance/course/topics/winning_number.html) by Gina Kolata
[^ds]: Simulation activity from [Data science in a box](https://datasciencebox.org/)
