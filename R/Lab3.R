#Task 1 (adding 2 args)
add2 <- function(x, y) x + y 

print(add2(2,4))

#Task 2 (above)
above <- function(x, n = 10) x[x > n]

v <- c(1:20)
#default n
print(above(v))
#n=14
print(above(v, 14))

#Task 3 (boolean comparing)
my_ifelse <- function(x, exp, n) {
  
  if (exp == '>') x[x > n]
  else if (exp == '<') x[x < n]
  else if (exp == '<=') x[x <= n]
  else if (exp == '>=') x[x >= n]
  else if (exp == '==') x[x == n]
  else x
}

v <- c(1:20)
n <- 10
print(my_ifelse(v, '>', n))
print(my_ifelse(v, '<', n))
print(my_ifelse(v, '<=', n))
print(my_ifelse(v, '>=', n))
print(my_ifelse(v, '==', n))
print(my_ifelse(v, 'asdasd', n))

#Task 4 (columnmean)
columnmean <- function(x, removeNA = TRUE) colMeans(x, na.rm = removeNA)

m <- cbind(c(1,2,3,4,NA), c(5,6,7,NA,8), c(9:13))
print(m)
print(columnmean(m))
print(columnmean(m, FALSE))
