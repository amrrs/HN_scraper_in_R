library(rvest)

url <- 'https://news.ycombinator.com/'

#further pages 
#url2 <- 'https://news.ycombinator.com/news?p=2'

content <- read_html(url)

#News Title

title <- content %>% html_nodes('a.storylink') %>% html_text()

#News Link Domain

link_domain <- content %>% html_nodes('span.sitestr') %>% html_text()

#Link Score / Upvote

score <- content %>% html_nodes('span.score') %>% html_text()

#Link Age (submission time)

age <- content %>% html_nodes('span.age') %>% html_text()

#Final Dataframe

df <- data.frame(title = title, link_domain = link_domain, score = score, age = age)
#Naive way of extracting the entire page content with this table
#tb <- content %>% html_node('table.itemlist') %>% html_text()
