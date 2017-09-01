Batting %>% 
  select(playerID, yearID, teamID, HR) %>%
  filter(teamID == 'NYA' & HR > 50) %>%
  arrange(desc(HR))