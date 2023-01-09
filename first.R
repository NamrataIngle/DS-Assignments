"Hello world"
string = 'This is first program of R'
string
print(string)
string1 <- "Welcome to the programming world"
string1
print(string1)
a <- 20
b <- 30
a+b
20
30
2.3
class(2.3)
class(2L)
#This is comment
name = 'Namrata'
name <- 'john'
name
#num <- 10
#num+5
num <- '10'
number <- "50"
text <- "Excellent"
paste("The word is",text) #concatenate / combine string use paste() function
name <- "Roy"
paste("The name is",name,text)
paste(name,text)
var1 <- var2 <- var3 <- 100
var1
help(paste)

#Legal variables

myvar<-10
My_var<-30
this.year<-2022
MyVar<-"abc"
.myvar<-'xyz'

#illegal variables : 

2myvar <- 'name'   #only initialize with alphabate
if <- 60            #you can't use predefined words/keywords as variable name

#DATA TYPES IN R

bool <- TRUE
class(bool)
bool1 <- T
class(bool1)

10>3
5==5
1 != 1

#Arithmatic operators

a <- 10
b <- 20

a+b
a-b
a*b
a/b
a^2       #Power/ raise to
a%%b      #modulus/reminder
a%/%b     #integer division/rounds the answer

??constants
pi

#Assignment operators

d <- 20.3       #Simple assignment
20.6 -> s

#BUILT IN MATH FUNCTIONS

max(10,20,50,6,80)
min(2,-1,20,-5)
sqrt(625)
abs(-6.3)

#DATA STRUCTURES : VECTORS, Data Frames
#HOMOGENEOUS VECTORS

#VECTOR OF STRING
brands <- c('bmw','ferari','thar')
class(brands)

#vector of numerical
v1 <- c(1,2,35,6,80)         # c is a function to concatenate the string
class(v1)

# hetrogeneous vector
mix <- c(10,10.5,'string',TRUE)
class(mix)

#Define two vectors
x <- c(2,3,5,6)
y <- c(1,2,5,6)

x*y
x+y
x/y

x>y
(x-y)*0.2

#SEQUENCE

1:10
for (i in 6:15)
  print(i)

seq(1,50,2) #1=start value, 50=end value, 2=step/increament value
seq(2,50,by=2)

#Repetition            #rep is a function to repeat 
rep(6,5)
rep('Repeat',5)

#RANDOM SAMPLE
sample(1:100,8)
#sample(1:20,100)
sample(1:20,100,replace=TRUE)
sample(c('BMW','FERARI','THAR'),100,replace=T)
sample.int(100L,replace=T)
help(sample.int)

#*********************************************************************

# INDEXING / ACCESSING VECTOR ELEMENTS
x1 <- c(2,2,0,5)
x1[1]
x1[3]
x1[-1]     #excludes the value of that position
x1[-3]
x1[-2]

#replacing the value
x1[2] <- 10    #value will be changed of that particular position
x1
x1[-2] <- 2    #excluding that particular position all will be replaced with the value
x1
x1[c(1,3)]
x1[c(1,2)]

y <- c(2,6,5,100)
y>9
y[y<9] <- 5    # values those are less than 9 will be replaced by the given value
y
y[y>10] <- 500
y

#RELATIONAL OPERATORS
marks <- c(98,90,86,92,93)
marks<90
marks[marks>90]

#COMPARISION OPERATOR
marks==90

names <- c('nams','shubh','renu','sagya')
names[1] <- 'namu'
names
'shubh' %in% names
'john' %in% names

#SLICING
marks
marks[3:7]
marks[4]
marks[5] <- 99.5
marks
marks[-5] <- 90
marks

price <- c(1999,1000,5999,4999,450,6599,999,6580)
price[2:8]
price[5] <- 4500
price
price[9] <- 10000
price
price[11] <- 9999
price
price[price>5000]
#sort in ascending order
sort(price)
sort(price,decreasing = F)
sort(price,decreasing = T)
help(T)
help(sort)
help(mean)
m <- c(1:10,20)
mean(m)
price
length(price)
max(price)
max(marks)
price[10] <- 5000
max(price)
min(price)
mode(price)
mean(price)
median(price)
sum(price)

#DATA FRAMES
#SLICING DATA FRAMES

a <- c(10,25,4,64,86,42,45)
b <- c('a','b','c','d','r','e','h')
data.frame(a,b)
df <- data.frame(a,b)
df
df[,1]
df[2,]
df[,]
df$Training

height <- c(150,200)
weight <- c(50,60)
data.frame(height,weight)

food <- data.frame(name = c('Manchurian','Noodels','Biryani','Kaju katli',
                            'Shejvan rice','Gulabjamun'),
                   type=c('veg','veg','non-veg','veg','veg','veg'),
                   taste=c('spicy','spicy','spicy','sweet','spicy','sweet'),
                   price=c(120,200,150,320,100,300)
                   )
food
#Rows with food type:veg
food[food$type=='veg',]
food[food$taste=='sweet',]

#Food names and prices of all non-veg items
food[food$taste=='sweet',c(1,4)]
food[food$taste=='sweet',c('name',"price",'type')]

#all spicy food with price less than 200
food[food$taste=='spicy'& food$price<200,]

#Orange, mtcars are built in data set. 
Orange
mtcars
dim(mtcars)#no of rows and columns
nrow(mtcars)#no of rows only
ncol(mtcars)#no of columns
str(mtcars)# structure - column names, data type and values
summary(mtcars) #min value, 1st quartile(25%), median,mean,3rd quartile(75%),max value
help(mtcars) #info of data set
mtcars$cyl  #individual columns values
table(mtcars$cyl) 
table(mtcars$gear)

#USArrests - (dataset)
USArrests
help("USArrests")
View(USArrests) #data get converted in table format

head(USArrests) #by default shows top 6 records
tail(USArrests) #by default shows last/bottom 6 records
head(USArrests,8) #8 records will be displayed

#check all available datasets
data()
data(package = .packages(all.available = TRUE))#to list the data sets in all *available* packages.


ages <- c(20,21,23,19,25,27,30,60,48,31)
plot(ages)

salary <- c(40000,45000,65000,80000,120000,300000,250000,60000,90000,1250000)
plot(salary)
# In doTryCatch (return(expr),name,parentenv,handler):
#Invalid graphics state - solution to this warning : Install ggplot2 from packages

plot(ages,salary)
plot(salary,ages)

help(plot)

#***************************************************************************

#airquality = read.csv('copy the path of file',header=T,sep=' ')#csv:comma seperated value 
#click on import dataset

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


