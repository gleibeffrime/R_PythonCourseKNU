## LAB 1
### Task 1
Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
* character
```r
ch <- 'a'
print(class(ch))
```
```r
[1] "character"
```
* numeric
```r
n <- 1.5
print(class(n))
```
```r
[1] "numeric"
```
* integer
```r
i <- 15L
print(class(i))
[1] "integer"
```
* complex
```r
c <- 1+5i
print(class(c))
[1] "complex"
```
* logical
```r
l <- TRUE
print(class(l))
[1] "logical"
```

### Task 2
Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
2.71, 0, 13; 100 значень TRUE.
```r
v1 <- c(5:75)
print(class(v1))
[1] "integer"
print(v1)
[1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
[27] 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56
[53] 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
```
```r
v2 <- c(3.14, 2.71, 0, 13)
print(class(v2))
[1] "numeric"
print(v2)
[1]  3.14  2.71  0.00 13.00
```
```r
v3 <- c(rep(TRUE, 100))
print(class(v3))
[1] "logical"
print(v3)
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [31] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [46] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [61] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [76] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [91] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
```
### Task 3
Створити матрицю за допомогою matrix, cbind/rbind
* matrix
```r
m1 <- matrix(c(0.5, 1.3, 3.5, 3.9, 131, 2.8, 0, 2.2, 4.6, 2, 7, 5.1), nrow=4, byrow = TRUE)
print(class(m1))
[1] "matrix" "array" 
> print(m1)
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
* cbind
```r
m2 <- cbind(c(0.5, 3.9, 0, 2), c(1.3, 131, 2.2, 7), c(3.5, 2.8, 4.6, 5.1))
print(class(m2))
[1] "matrix" "array" 
print(m2)
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
* rbind
```r
m3 <- rbind(c(0.5,1.3, 3.5), c(3.9, 131, 2.8), c(0, 2.2, 4.6), c(2, 7, 5.1))
print(class(m3))
[1] "matrix" "array" 
print(m3)
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```
### Task 4
Створити довільний список (list), в який включити всі базові типи.

```r
my_list <- list('z', 12.3, 123L, 12+3i, FALSE)
print(class(my_list))
[1] "list"
print(my_list)
[[1]]
[1] "z"

[[2]]
[1] 12.3

[[3]]
[1] 123

[[4]]
[1] 12+3i

[[5]]
[1] FALSE
```
### Task 5
Створити фактор з трьома рівнями «baby», «child», «adult».

```r
my_factor <- factor(c('child', 'baby', 'child', 'baby', 'adult', 'child', 'adult', 'adult'))
print(class(my_factor))
[1] "factor"
print(my_factor)
[1] child baby  child baby  adult child adult adult
Levels: adult baby child
```
### Task 6
Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
```r
 my_vector <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
print(match(NA, my_vector))
[1] 5
print(length(which(is.na(my_vector))))
[1] 3
```
### Task 7,8
Створити довільний data frame та вивести в консоль. Змінити імена стовпців.

```r
my_dataframe <- data.frame(d1 = c(1:4), d2 = c('aaa','ccc', 'jjj', 'uuu'), d3 = c(TRUE, FALSE, TRUE, TRUE))
print(my_dataframe)
  d1  d2    d3
1  1 aaa  TRUE
2  2 ccc FALSE
3  3 jjj  TRUE
4  4 uuu  TRUE
#Task 8
names(my_dataframe) <- c('numbers', 'chs', 'boolean')
print(my_dataframe)
  numbers chs boolean
1       1     aaa    TRUE
2       2     ccc   FALSE
3       3     jjj    TRUE
4       4     uuu    TRUE
```
