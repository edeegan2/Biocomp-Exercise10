#####Exercise10
library(ggplot2)
rm(list=ls())
list.files()


##Question 1
#reading in text file created using avg high temperature for each month of year
weather <- read.table("exercise10.txt", sep="\t", header=T)
#creating ggplot graph with x=month of year and y=temperature
weatherplot <- ggplot(data=weather, aes(x=Month.in.year, y=Avg..High))+
  #specifying scatter plot
  geom_point()+
  #specifying classic theme
  theme_classic()+
  #adding trend line
  stat_smooth(method="loess")

##Question 2
data <- read.table("data.txt", sep=",", header=T)
unique(data$region)

#PLOT 1
#plotting mean observations of four regions in barplot
ggplot(data=data, aes(x=region, y=observations))+
  #adding stat summary for mean function and bar geom
  stat_summary(fun=mean,
               geom="bar")+
  #adding classic theme
  theme_classic()

#PLOT 2
ggplot(data=data, aes(x=region, y=observations))+
  #adding stat summary for mean function and scatterplot geom
  stat_summary(fun=mean,
               geom="point")+
  #adding classic theme
  theme_classic()+
  #adding jitter to see all observations
  geom_jitter()

#QUESTION 2 ANSWER
#The two graphs do tell different stores because with the 
#bar plot we only see the four means of the regions. There is 
#also a lot of space being taken up by the bars in the chart
#that isn't really telling us anything so it's not a very
#efficient graph. With the jitter plot, however, we can see the 
#distribution of the observations. We see that in the North region
#the observations are condensed, and in the south there is a split.
#In the west and east they are more evenly distributed. The 
#scatter plot doesn't tell us the mean but it does give more information. 




