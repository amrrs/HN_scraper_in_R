library(rvest)

url <- 'https://news.ycombinator.com/'

content <- read_html(url)

#Extracting the News Title

content %>% html_nodes('a.storylink') %>% html_text()

#Extracting the News Link Domain

content %>% html_nodes('span.sitestr') %>% html_text()

content %>% html_nodes('span.score') %>% html_text()

content %>% html_nodes('span.age') %>% html_text()


#Naive way of extracting the entire page content with this table
#tb <- content %>% html_node('table.itemlist') %>% html_text()
