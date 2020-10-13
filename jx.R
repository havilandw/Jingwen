#[12:22 PM] Xu, Jingwen
#The code of importing data is---
## [12:30 PM] Xu, Jingwen
## MA678 Homework5, exercise 15.8(b)

  
congress = read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Congress/data/congress.csv")


congress88 <- data.frame(vote=congress$v88_adj,pastvote=congress$v86_adj,inc=congress$inc88)


#​[12:23 PM] Xu, Jingwen and then----

library(brms)          


robust_fit<-brm(vote~pastvote+inc,
                family=student(link="identity"),
                data=congress88,refresh=0)
