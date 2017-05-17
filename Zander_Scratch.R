library(readr)


pos114 <- read_csv("/Users/alexanderfurnas/Projects/Maplight_ideal_points/114positions.csv")

pos114 <- pos114 %>% mutate(position_date = lubridate::ymd(stringr::str_split(citation, "[()]")[[1]][2]))

pos114 <- pos114 %>% mutate(bill_id = paste(session, prefix, number, sep = "_"))


library(lubridate)