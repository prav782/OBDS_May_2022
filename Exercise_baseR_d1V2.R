#Exercise 1
#R for calculations as an example
100+100 #This adds the numbers
100*2/4 #Combined calculations 

#Exercise 2
a <- c(1:200) #This makes vector a of numbers 1 to 200)
b <- a*123 #This multiplies each element of the vector by the given value
b[44] #This extracts the 44th element of the vector
b[1:15] 
b_sub <- b[1:15] #This extracts 1 to 15 elments of this vector
b_sub <- c(b_sub, 24108, 24231) #This adds the numbers to the vector
new_variable <- c('actb', 100, 3.4)
new_variable [2]*100 #This does not work 
vector_animals <- c(mammals="lion", fish="tuna") #attributes for elements within the vector
vector_animals
attributes (vector_animals)
names

#Activity 3
matrix_1 <- matrix (1:9, nrow=3)#Making a matrix with defined rows 
matrix_1
matrix_1 [2,3]
matrix_2 <- matrix (1:12, nrow=3, ncol =4, byrow = TRUE)#Making a matrix with defined rows and columns ordered by row
matrix_2
matrix_2
array_1 <- array(1:24, dim=c(4,2,3)) #Making an array 
array_1
array_1 [3,2,2]
last_matrix <- array_1 [,,3] #Extracting components of the array 
last_matrix
list_1 <- list(1:15, 'Praveen', TRUE, 4, F)#Making a list
list_1
list_1 [c(3,5)] #Pull out multiple elements out of a list
list_1 [[5]] #To pull out one element from a list 

#Extra exercise
#Creating the object
movie <- c("Whatever Works","ItFollows","Loveand Mercy","TheGoonies","JiroDreams of Sushi","ThereWill be Blood", "Moon", "Spice World", "Serenity", "Finding Vivian Maier")
year <- c("2009", "2015", "2015", "1985", "2012", "2007", "2009", "1988", "2005", "2014")
boxoffice<-c(35,15,15,62,3,10,321,79,39,1.5)
genre <-c("Comedy","Horror","Drama","Adventure","Documentary","Drama","Science,Fiction","Comedy","Science Fiction", "Documentary")
movie [10]
genre [1:4]
movie [movie=='Spice World'] <- 'The Naked Gun' #Important commands for indexing
movie[year < 1990]
movie[genre=='Comedy']
movie[genre=='Comedy']; boxoffice[genre =='Comedy']
movie[boxoffice <50 & genre == 'Comedy']

#Exercise 4
#Reading in a table
coding_gene <- read.table(file= "/project/obds/shared/resources/2_r/baseR/coding_gene_region.bed",header = FALSE,sep = "\t")
View(coding_gene)#Viewing the dataframe
dim (coding_gene)#Dimensions of the dataframe
class(coding_gene)#Class of the object
nrow(coding_gene)#Gives the number of rows 
ncol(coding_gene)#Gives the number of columns 
colnames(coding_gene) <- c("chr","start","stop","name","score","strand") #Adding new column names to the dataframe
view(coding_gene)
names(coding_gene)

coding_gene[30,3]#Extracting rows and columns
coding_gene[ ,2]
start <- coding_gene$start #Extracting a given column
start

coding_gene$int_length <- coding_gene$stop - coding_gene$start #This creates a new column called int_length
View(coding_gene)
colnames(coding_gene)
msize <- coding_gene[coding_gene$int_length>= 100001 & coding_gene$int_length <= 200000,] #This creates a new object with given specifications of int_length
View(msize)

write.table (msize, file="subset_coding_gene_R.txt", row.names = F, sep ="\t", quote =F)#This exports the table out of R
