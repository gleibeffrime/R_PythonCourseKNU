## LAb 3
### Task 1
* Функція add2(x, y) яка повертає суму двох чисел.:
```r
add2 <- function(x, y) x + y 
print(add2(2,4))
```
### Task 2
* Функція above(x, n), яка приймає вектор та число n, та повертає всі
елементі вектору, які більше n. default n = 10.:
```r
above <- function(x, n = 10) x[x > n]
v <- c(1:20)
#default n
print(above(v))
 [1] 11 12 13 14 15 16 17 18 19 20
#n=14
print(above(v, 14))
[1] 15 16 17 18 19 20
```
### Task 3
* Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його
елементи за допомогою exp з n, та повертає елементи вектору, які
відповідають умові expression:
```r
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
 [1] 11 12 13 14 15 16 17 18 19 20
 print(my_ifelse(v, '<', n))
[1] 1 2 3 4 5 6 7 8 9
 print(my_ifelse(v, '<=', n))
 [1]  1  2  3  4  5  6  7  8  9 10
 print(my_ifelse(v, '>=', n))
 [1] 10 11 12 13 14 15 16 17 18 19 20
 print(my_ifelse(v, '==', n))
[1] 10
 print(my_ifelse(v, 'hoho', n))
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
```
### Task 4
* Функція columnmean(x, removeNA), яка розраховує середнє значення
(mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він
дорівнює TRUE:
```r
columnmean <- function(x, removeNA = TRUE) colMeans(x, na.rm = removeNA)
 m <- cbind(c(1,2,3,4,NA), c(5,6,7,NA,8), c(9:13))
 print(m)
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4   NA   12
[5,]   NA    8   13
 print(columnmean(m))
[1]  2.5  6.5 11.0
 print(columnmean(m, FALSE))
[1] NA NA 11
```
