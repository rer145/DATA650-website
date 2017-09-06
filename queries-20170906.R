#library(Lahman)
#library(dplyr)

#Find all instances where Yankees have hit 40 homeruns or more
Batting %>%
  select(yearID, teamID, playerID, HR) %>%
  filter(teamID == 'NYA' & HR >= 40) %>%
  arrange(desc(HR))

#Find all instances where a player had more than 40 HR but less than 60 strikeouts
Batting %>%
  select(yearID, teamID, playerID, HR, SO) %>%
  filter(HR > 40 & SO < 60) %>%
  arrange(SO)

#Find all instances of Phillies in the 1970s hitting more than 30 HR
Batting %>%
  select(yearID, teamID, playerID, HR) %>%
  filter(teamID == 'PHI' & yearID >= 1970 & yearID <= 1979 & HR > 30) %>%
  arrange(desc(HR))

#Find all instances of Phillies in the 1970s hitting more than 30 HR (using between)
Batting %>%
  select(yearID, teamID, playerID, HR) %>%
  filter(teamID == 'PHI' & between(yearID, 1970, 1979) & HR > 30) %>%
  arrange(desc(HR))



#Find every instance of a player hitting more than 50 HR ordered by most HR to lowest
Batting %>%
  select(yearID, teamID, playerID, HR) %>%
  filter(HR > 50) %>%
  arrange(desc(HR))


#Find all instances of a player striking out less than 10 times, but must have at least 400 AB
# smallest number of SO at top (then most AB)
Batting %>%
  select(yearID, teamID, playerID, AB, SO) %>%
  filter(AB >= 400 & SO < 10) %>%
  arrange(SO, desc(AB))