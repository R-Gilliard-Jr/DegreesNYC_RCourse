#' Do not modify this code
#' Don't worry too much about the function syntax for now,
#' we will discuss that further next week.
create_frame <- function(x) {
  # Your code here. Assign the resultant data frame to a variable called data
  data <- list()
  for (i in seq(1, 5)) {
    data[[i]] <- x * i
  }
  data <- 
    as.data.frame(data) %>%
      setNames(paste0("V", 1:5))
  # do not modify this code
  return(data)
}
