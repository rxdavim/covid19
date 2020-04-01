library(rvest)

library(dplyr)

# download data table from site
site.table <- read_html("https://www.worldometers.info/coronavirus/") %>%
  html_node("table") %>%
  html_table() 

# filter data form table  
site.table %>% 
  filter(`Country,Other` %in% c("Portugal", "Spain", "Italy", "France", "USA")) %>%
  select(`Country,Other`, TotalCases, TotalRecovered, TotalDeaths, `Tot Cases/1M pop`, `Deaths/1M pop`) %>% 
  print(.)

  