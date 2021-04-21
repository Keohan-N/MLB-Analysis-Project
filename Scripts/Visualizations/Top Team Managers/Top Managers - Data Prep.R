#Libraries
{
  library(Lahman)
  library(tidyverse)
  library(ggplot2)
  library(ggrepel)
  library(ggstar)
  library(directlabels)
  library(scales)
  library(gghighlight)
  library(hexbin)
}


#Data Prep
{
  
  wins.byManager <- left_join(
    x = Managers,
    y = Teams,
    by = c("yearID", "lgID", "teamID"), suffix = c("", ".y")
  ) %>% 
    select(-contains(".y")) %>% 
    mutate(
      DivWin = ifelse(DivWin == "Y", 1, 0),
      WCWin = ifelse(WCWin == "Y", 1, 0),
      LgWin = ifelse(LgWin == "Y", 1, 0),
      WSWin = ifelse(WSWin == "Y", 1, 0)
    ) %>% 
    group_by(playerID, teamID) %>% 
    summarize(
      year.bgn = min(yearID),
      year.end = max(yearID),
      W = sum(W),
      L = sum(L),
      DivWin = sum(DivWin),
      WCWin = sum(WCWin),
      LgWin = sum(LgWin),
      WSWin = sum(WSWin)
    )
  
  ws.winManager <- wins.byManager %>% 
    #group_by(playerID, teamID) %>% 
    group_by(playerID) %>% 
    summarize(
      year.bgn = min(year.bgn),
      year.end = max(year.end),
      W = sum(W),
      L = sum(L),
      DivWin = sum(DivWin),
      WCWin = sum(WCWin),
      LgWin = sum(LgWin),
      WSWin = sum(WSWin)
    ) %>% 
    filter(!is.na(WSWin), WSWin > 0) %>% 
    mutate(
      WSWin.Avg = WSWin / (year.end - year.bgn + 1)
    )
}





#Total Wins Data Prep
{
  total.wins <- left_join(
    x = Managers,
    y = Teams,
    by = c("yearID", "lgID", "teamID"), suffix = c("", ".y")
  ) %>% 
    select(-contains(".y")) %>% 
    mutate(
      DivWin = ifelse(DivWin == "Y", 1, 0),
      WCWin = ifelse(WCWin == "Y", 1, 0),
      LgWin = ifelse(LgWin == "Y", 1, 0),
      WSWin = ifelse(WSWin == "Y", 1, 0)
    ) %>% 
    # filter(playerID %in% (wins.byManager %>%
    #                         ungroup %>% 
    #                         top_n(10, W))$playerID) %>% 
    group_by(playerID) %>% 
    arrange(yearID, teamID) %>% 
    add_count() %>% 
    mutate(
      Total.Win = sum(W),
      Running.Win = cumsum(W),
      team.chg = ifelse(teamID == lag(teamID), 0, 1),
      Win.Percent = W / G * 100
    ) %>% #select(yearID, playerID, teamID, team.chg)
    replace_na(list(
      team.chg = 1, DivWin = 0, WCWin = 0, LgWin = 0, WSWin = 0
    )) %>% 
    left_join(
      x = ., y = People, by = "playerID", suffix = c("", ".y")
    ) %>% 
    left_join(
      x = ., y = Teams, by = "teamID", suffix = c("", ".y")
    ) %>% 
    select(yearID, playerID, teamID, lgID, W, Win.Percent, DivWin, LgWin, WSWin,
           Running.Win, Total.Win, team.chg, nameFirst,
           nameLast, name) %>% 
    distinct %>% 
    mutate(
      team.chg = ifelse(team.chg == 1, TRUE, FALSE),
      nameFull = paste(nameFirst, nameLast, sep = " ")
    )
  
  total.wins.top <- total.wins %>%
    filter(playerID %in% (wins.byManager %>%
                            ungroup %>%
                            top_n(10, W))$playerID)
  
  
  
  
}
