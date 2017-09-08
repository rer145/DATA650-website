#Groupby player id and sum HR total
Batting %>%
  filter(playerID == 'ruthba01') %>%
  group_by(playerID) %>%
  summarize(career_HR = sum(HR))
#select not required

#Find the career HR totals for all players, limited to players with career total of 600 or more
# order from highest to lowest
Batting %>%
  group_by(playerID) %>%
  summarize(career_HR = sum(HR)) %>%
  filter(career_HR >= 600) %>%
  arrange(desc(career_HR))

#ave, min, max are other aggregate functions available

#What players have the highest average per season HR totals?
Batting %>%
  group_by(playerID) %>%
  summarize(season_avg = mean(HR)) %>%
  filter(season_avg >= 30) %>%
  arrange(desc(season_avg))
  
#multiple column groupings
Batting %>%
  group_by(playerID) %>%
  summarize(season_avg = mean(HR), min_HR = min(HR), max_HR = max(HR)) %>%
  filter(season_avg >= 30) %>%
  arrange(desc(season_avg))


#What players from 1970 to today have hit more than 50 HR at least once? Don't list a player more than once.
Batting %>%
  filter(yearID >= 1970) %>%
  group_by(playerID) %>%
  summarize(season_hr = max(HR)) %>%
  filter(season_hr > 50) %>%
  arrange(desc(season_hr)) %>%
  select(playerID)

