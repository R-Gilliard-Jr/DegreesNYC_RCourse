# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

test_while_subtract <- function() {
   exists("ws_total") && ws_total == 45
}

test_for_vector <- function() {
   test <- 
      c("apple,red", "orange,orange", "banana,yellow",
      "grape,purple", "kiwi,green")
   exists("fruits_colors") && identical(test, fruits_colors)
}

test_map_sums <- function() {
   test <- list(60, 150, 240, 330, 420)
   exists("final_sums") && identical(test, final_sums)
}

test_challenge <- function() {
   correct <- function(x) {
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
   
   try(totest <- get("create_frame", envir = .GlobalEnv))
   
   test_vectors <- list(1:20, 21:40, 41:60, 61:80, 81:100)
   
   outcomes <- sapply(test_vectors, function(x) identical(correct(x), totest(x)))
   all(outcomes)
}