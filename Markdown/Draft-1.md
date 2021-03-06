---
title: "MLB Analysis - Project Draft 2"
author: "Group 6: Nick Keohan, Harrison Flynn, and Shaun Harrington"
date: "April 21, 2021"
output:
  html_document: 
    keep_md: TRUE
    fig_width: 8
    fig_height: 10
---

## Introduction

  Baseball has been intertwined with American culture since almost the birth of the nation. The modern game of baseball that we have come to know evolved from similar games played in England. Within 100 years of the founding of the United States, the modern game of baseball was widely recognized as a national sport. By 1856, baseball was already becoming to be known as "America's pasttime." 
  
  Despite how ingrained baseball has become in the United States, the game has continued evolving. Rule changes in the early 1900s led to the end of what is now known as the Dead-ball era and the emergence of power-hitters such as Babe Ruth. Another evolution in the game occurred in 1975 when a ruling granted more power to the union and the independence of players, leading to a substantial increase in salaries. More recently the steroid-abuse among professional baseball players came to national attention when it was discovered the extent that these substances were being used.
  
  Due to the discrete nature of the outcome of each play, data collection on baseball began fairly early and an emphasis on statistical analysis has gained greater traction that many other sports. In 1971, the Society for American Baseball Research was founded and paved the way for more advanced empirical analysis of the sport. Bill James, one of the pioneers of this new approach, coined the term Sabermetrics in reference to this advanced analysis. The objective of sabermetrics is to scientifically analyze why a team wins or loses. 

  The following analysis will dissect this evolution to understand what has changed by means of these developments that have occurred since the dead-ball era. 

## Data Summary

  In 1995, Sean Lahman, an author and journalist, made a database of extensive baseball data freely available to the public. This collection of data has been ongoing and will be used in this analysis.

  "[Lahman's] database contains pitching, hitting, and fielding statistics for Major League Baseball from 1871 through 2019. It includes data from the two current leagues (American and National), the four other "major" leagues (American Association, Union Association, Players League, and Federal League), and the National Association of 1871-1875."

 This database contains the following main tables: People, Batting, Pitching, and Fielding. But also includes a collection of secondary tables: Teams, Post-Season play, Awards, Hall of Fame, AllstarFull, Managers, FieldingOF, ManagersHalf, Salaries, Appearances, Schools, and CollegePlaying.

A more thorough reading of this database can be found at [Sean Lahman's website](http://www.seanlahman.com/files/database/readme2017.txt).


## Main Findings





### Top Team Managers

We'll take a look at the most successful team managers since 1884. This will be done by looking at most wins and most World Series Championships.

By joining the Managers and Teams tables in the Lahman database, we're able to approach this task.




#### World Series Championships

Determining the performance of managers can be from numerous perspectives. We'll begin with the metric used to determine the best team each year: World Series Championships.

Below are the top 5 coaches by World Series Championships. Showing the cumulative championships by manager, irrespective of the team that they managed.

![](Draft-1_files/figure-html/Mgr.WS-1.png)<!-- -->

As can be immediately seen, four of the top five team managers occurred prior to 1975, the year that the players' union was strengthed, and none of these managers had a win in the dead-ball era, pre-1920. 17 of these 24 World Series Championships occurred under the New York Yankees from 1920 to 1960. 

  Interestingly, of these top 5 team managers, only one of them, Walter Alston, was able to win a World Series at more than one franchise. This even despite the top 2, Joe McCarthy and Casey Stengel, each winning seven World Series with the New York Yankees before moving to another team before retirement. 
  
  This calls to question the effectiveness of a team manager in winning a World Series Championship. Even moreso when considering that after 1975 when players were not stuck at a certain team but could go to the highest bidder, the era of 



Another perspective is to consider the total number of wins a manager is able to lead their teams to.

</br>



![](Draft-1_files/figure-html/Mgr.Cumulative.Wins.Chart-1.png)<!-- -->

\newpage 

### Regular vs. Post Season Performance 

![](Draft-1_files/figure-html/Post.Seas.Chart-1.png)<!-- -->



## Conclusion
