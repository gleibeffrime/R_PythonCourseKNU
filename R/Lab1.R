#Task 1
#character
ch <- 'a'
print(class(ch))

#numeric
n <- 1.5
print(class(n))

#integer
i <- 15L
print(class(i))

#complex
c <- 1+5i
print(class(c))

#logical
l <- TRUE
print(class(l))

#Task 2
#vector1
v1 <- c(5:75)
print(class(v1))
print(v1)

#vector 2
v2 <- c(3.14, 2.71, 0, 13)
print(class(v2))
print(v2)

#vector 2
v3 <- c(rep(TRUE, 100))
print(class(v3))
print(v3)

#Task 3
#matrix
m1 <- matrix(c(0.5, 1.3, 3.5, 3.9, 131, 2.8, 0, 2.2, 4.6, 2, 7, 5.1), nrow=4, byrow = TRUE)
print(class(m1))
print(m1)

#cbind
m2 <- cbind(c(0.5, 3.9, 0, 2), c(1.3, 131, 2.2, 7), c(3.5, 2.8, 4.6, 5.1))
print(class(m2))
print(m2)

#rbind
m3 <- rbind(c(0.5,1.3, 3.5), c(3.9, 131, 2.8), c(0, 2.2, 4.6), c(2, 7, 5.1))
print(class(m3))
print(m3)

#Task 4
my_list <- list('z', 12.3, 123L, 12+3i, FALSE)
print(class(my_list))
print(my_list)

#Task 5
my_factor <- factor(c('child', 'baby', 'child', 'baby', 'adult', 'child', 'adult', 'adult'))
print(class(my_factor))
print(my_factor)

#Task 6
my_vector <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
print(match(NA, my_vector))
print(length(which(is.na(my_vector))))

#Task 7
my_dataframe <- data.frame(d1 = c(1:4), d2 = c('aaa','ccc', 'jjj', 'uuu'), d3 = c(TRUE, FALSE, TRUE, TRUE))
print(my_dataframe)

#Task 8
names(my_dataframe) <- c('numbers', 'letters', 'boolean')
print(my_dataframe)

