#***********visualisation***************

aq <- datasets::airquality

##Top 10 rows and columns
head(aq,10)
tail(aq,10)
names(aq) #names of all the columns will b edisplayed

#To see entire dataset click on airquality data set name on top

aq[,c(1,2)] #all rows and first two columns

aq[,-6] #excluding particular column

summary(aq[,1]) #summary statistics for particular column

summary(aq$Wind)

summary(aq) #summary of all columns

plot(aq$Wind)
plot(aq$Temp,aq$Solar.R,type='p')
plot(aq) #scatterplot
help(plot)
plot(aq$Solar.R,aq$Month)

#points and lines

plot(aq$Wind,type='p') #p = points
plot(aq$Wind,type='l') #l = lines
plot(aq$Wind,type='b')


plot(aq$Ozone,
     xlab = 'Ozone Concentration',
     ylab = 'No of Instances',
     main = 'Ozone levels in Ny city',
     col = 'red',
     type = 'l'
)

plot(aq,col='green')

#Horozontel bar plot

barplot(aq$Ozone,
        main = 'Ozone Concentration in air',
        ylab = 'Ozone levels',
        col = 'light green',
        hor = T,
        axes = F
)
help("barplot")


#******HISTOGRAM***********

hist(aq$Ozone)

hist(aq$Ozone,
     main = 'Solar radiation values in air',
     xlab = 'Solar radiation',
     col = 'pink',
     border = 'red'
)

boxplot(aq$Solar.R,
        main = 'Boxplot',
        col = 'green',
        border = 'red',
        horizontal = T
)

#Multiple boxplot

boxplot(aq[,1:4],
        main = 'Multiple Boxplot',
        col = 'pink',
        border = 'red',
        horizontal = T
)

var(aq$Ozone)  #variance
sd(aq$Ozone) #standard deviation
sd(aq$Ozone,na.rm = T) #remove NA values with na.rm = T

kurtosis(aq$Ozone,na.rm = T)
skewness(aq$Ozone,na.rm = T)

install.packages("dplyr")   #install packages with this command
library(dplyr)

# nycflight13 package is only for dataset 

install.packages("nycflight13")  

help("datasets")

help(mtcars)
dim(mtcars)
head(mtcars)
head(mtcars,15)
tail(mtcars)
tail(mtcars,15)
nrow(mtcars)
ncol(mtcars)
str(mtcars)
summary(mtcars)
View(mtcars)
names(mtcars)

#filter out records based on some criteria

mtcars
names(mtcars)
arrange(mtcars,desc(wt))
filter(mtcars,gear<=3)



# Pipe /chaining operator %>% (output of one as input to other function)

#arrange by sequence 

arrange(mtcars,gear==3)

arrange(mtcars,wt,gear)

select(mtcars, wt:gear)
select(mtcars, -(wt:gear))

# *************create or add new columns************ 

newdf <- mutate(mtcars,
                gain = disp-hp,
                speed = cyl-wt
                )
View(newdf)

#******only output.....not storing*********

mutate(mtcars,
          gain = disp-hp,
          speed = cyl-wt
)

#**************sample**** 
 
sample_n(mtcars,15) #select random 15 samples from dataset
sample_frac(mtcars,0.05)

#***********
mtcars$mpg
unique(mtcars$cyl)
length(unique(mtcars$gear))

dfdept <- data.frame(Name=c('snehal','amit','namrata','shubham','renuka'),
                     Dept=c('trainer','Admin','sales','Sales','trainer'),
                     Salary=c(90000,60000,125000,90000,90000)
                     )

dfdept


depgrp <- group_by(dfdept,Dept)


summarise(depgrp,
          sal = n_distinct(Salary),
          depgrp = n()
          )
#*********************************************************
select(mtcars,wt)
select(mtcars,7)

#**********************************************************
filter(
        summarise(
                select(
                        group_by(mtcars,wt,gear,cyl),
                        qsec,speed
                ),
                arr = mean(qsec,na.rm=T),
                dep = mean(speed,na.rm=T)
        ),
        arr > 15 | dep > 3
)
rlang::last_error()
                