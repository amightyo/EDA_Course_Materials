#Reddit data
reddit <- read.csv("reddit.csv")

str(reddit)
summary(reddit)
table(reddit$employment.status)
levels(reddit$age.range)
library(ggplot2)
qplot(data=reddit, x=reddit$age.range)
#Ordered factor

reddit$age.range <- ordered(reddit$age.range, levels=c("Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above"))
qplot(data=reddit,x=reddit$age.range)


