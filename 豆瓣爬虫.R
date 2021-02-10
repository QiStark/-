library(xml2)
library(RCurl)
library(jsonlite)
library(stringr)
library(rvest)
library(dplyr)

# help(package = "rvest")

url <- "https://movie.douban.com/j/search_subjects?type=movie&tag=%E7%83%AD%E9%97%A8&sort=recommend&page_limit=333&page_start=0"  #网站只列出了前333的电影

DataJs <- fromJSON(url,simplifyMatrix = T,flatten = T)


data <- as.data.frame(DataJs)

write.csv(data,file = "豆瓣热门电影.csv")

