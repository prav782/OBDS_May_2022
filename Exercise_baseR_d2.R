#Morning session 11/05/22

#Exercise - getting files and working directories
a <- 10
b <- "Happy"
c <- c(1:15)

save.image(file = "Exercise_baseR_d2.RData")
saveRDS(object = a, file = "object_a.rds")

rm(a)
getwd
getwd ()

#Exercise 2
#Binding, and calculating statistics
Matrix <- readRDS (file = "/project/obds/shared/resources/2_r/my_day2matrix.rds")
Matrix_2 <- cbind (Matrix, rowSums(Matrix), rowMeans(Matrix))
Matrix_2
Matrix_2 <- cbind (Matrix, rowsums = rowSums(Matrix), rowmeans = rowMeans(Matrix))
Matrix_2 <- rbind (Matrix_2, c(colSums(Matrix_2)), c(colMeans(Matrix_2)))
                  
data("ToothGrowth")
summary(ToothGrowth)
head(ToothGrowth)
colnames (ToothGrowth)
mean(len)
mean(ToothGrowth$len)
max(ToothGrowth$len)
min(ToothGrowth$len)
sum(ToothGrowth$len)
anyNA(ToothGrowth)


#Exercise 3 and 4
#Ordering and sorting 
data("airquality")
dim(airquality)
names(airquality)
air_oz <- airquality[order(airquality$Ozone), ]
air_oz

air_sorted <- airquality[order(airquality$Month, airquality$Temp, decreasing = TRUE), ]

write.table(air_sorted, file = "air sorted_2.txt", quote=FALSE, sep = "\t")

#Exercise 4
buildings <- data.frame(location=c(1, 2, 3), name=c("b1", "b2", "b3"))
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1),
                   efficiency=c(51,64,70,71,80,58))

building_stats <- merge (buildings, data, by = "location")
head (building_stats)

agg_airquality <- aggregate (airquality, by=list(airquality$Month), FUN = mean, na.rm=T)
agg_airquality

agg_airquality <- aggregate (airquality, by=list(airquality$Month), FUN = mean, na.rm=T)
agg_airquality_2 <- aggregate (airquality$Solar.R, by=list(Month = airquality$Solar.R), FUN = mean, na.rm=T)
agg_airquality_2
agg_airquality_3 <- aggregate (airquality$Solar.R, by=list(Month = airquality$Solar.R), FUN = sd, na.rm=T)
agg_airquality_3

#Extra exercise
data <- data.frame( 
  name = c("Astrid", "Lea", "Sarina", "Remon", "Lea", "Babice", "Jonas", "Wendy", "Niveditha", "Gioia"), 
  sex = c("female", "male", "male", "male", "female", "male", "female", "female", "male", "female"), 
  age = c(30, 25, 25, 29, 31, 30, 33, 35, 25, 34), 
  superhero = c("Batman", "Superman", "Batman", "Spiderman", "Batman", "Antman", "Batman", "Superman", "Maggott", 
                "Superman" ), 
  tattoos = c(11, 15, 12, 12, 17, 12, 9, 13, 9, 9)
  
)

head (data)
dim (data)
median (data$age)
mean (data$age[data$sex == "female"])
mean (data$age[data$sex == "male"])

max (data$tattoos[data$sex == "male"])
data$age < 32 
data$sex == "female"
data$age < 32 & data$sex == "female"
sum (data$age < 32 & data$sex == "female")
sum (data$age < 32)

sum (data$age < 32 & data$sex == "female")/sum (data$age < 32)

#Exercise 6
vec <- c(1:10)
vec
sq_vec <- sapply(vec, function(x) x ^ 2)
sq_vec

square <- function(x){
  y=x^2
  return (y)
}

lapply(vec, square)
my_list <- list(1:3, TRUE,FALSE,5)
my_list
lapply(my_list,sum)

sapply(my_list,sum)

sapply(my_list, rep, times =3, each =3) #Function should come after object name

#Exercise 7 - writing loops

for (i in 1:7) {
  print(i^3)
}

#Writing a for loop

for(i in colnames(iris)) {
  print(paste0(i, "(", nchar(i),")"))
}
#Writing an ifelse loop
colours_vector <- c("red", "orange", "purple", "yellow", "pink", "blue")
colours_vector[ifelse(nchar(colours_vector)==4,TRUE,FALSE)]

#Writing a function #Exercise 8
hypot <- function (a,b) {
  output <- sqrt (a^2 + b^2)
  return(output)
}

hypot(5,6)

