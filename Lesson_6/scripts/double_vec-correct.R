# Write a function, double_vec, that doubles the length of a vector by copying all of the elements of the vector. Sort 
# the vector so that like elements are together using the `sort()` function.

double_vec <- function(x) {
  doubled <- c(x, x)
  doubled <- sort(doubled)
  return(doubled)
}
