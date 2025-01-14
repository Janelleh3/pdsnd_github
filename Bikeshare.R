#Janelle Hakala
#Nanodegree R Project 2
#Explore Bikeshare Data
#Question 2- What does the distribution of bikeshare trips looks like by age/birthyear in NYC?

#set working directory
install.packages('ggplot2')
library(ggplot2)

#read in data
newyork <- read.csv('new-york-city.csv')

#create a histogram of birth year
ggplot(aes(x=Birth.Year), data = newyork)+
  geom_histogram(color="black", fill="lightblue")+
  scale_x_continuous(limits= c(1950, 2000), breaks = seq(1950, 2000, 10))+
  #add title and axis labels
  xlab('Year')+
  ylab('Count')+
  ggtitle('Birth Year & Bikeshare Trips in NYC')