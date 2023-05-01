# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

test_mult5 <- function() {
   func <- try(get("mult5", envir = .GlobalEnv), silent = T)
   if (is.function(func)) {
      case1 <- func(5) == 25
      case2 <- func(1:20) == 1:20 * 5
      all(case1, case2)
   } else {
      FALSE  
   }
}

test_double_vec <- function() {
   correct <- function(x) {
      doubled <- sort(c(x, x))
      return(doubled)
   }
   func <- try(get("double_vec", envir = .GlobalEnv), silent = T)
   if (is.function(func)) {
      case1 <- double_vec(5) == correct(5)
      case2 <- double_vec(c(1, 2, 3)) == correct(c(1, 2, 3))
      case3 <- double_vec(c(TRUE, FALSE, TRUE, FALSE, FALSE)) == correct(c(TRUE, FALSE, TRUE, FALSE, FALSE))
      all(case1, case2, case3)
   } else {
      FALSE
   }
}

test_email <- function() {
   correct <- function(recipient = "Customer", message = "", name = "Customer Service Team", closing = "Best") {
      glue::glue(
         "Dear ", recipient, ",", "\n\n",
         "Thank you for your email! ", message, "\n\n",
         closing, ",", "\n",
         name
      )
   }
   func <- try(get("email", envir = .GlobalEnv), silent = T)
   if (is.function(func)) {
      defaults <- formals(func)
      default_check <- any(sapply(defaults, is.symbol))
      if (default_check) print("At least one variable does not have a default argument")
      
      case1 <- list("RG", "We will respond at our earliest convenience.", "JR", "Sincerely")
      case1 <- identical(do.call(func, case1), do.call(correct, case1))
      
      all(!default_check, case1)
   } else {
      FALSE
   }
}

test_even_num <- function() {
   correct <- function(x) {
      result <- x %% 2 == 0
      return(result)
   }
   func <- try(get("even_num", envir = .GlobalEnv), silent = T)
   if (is.function(func)) {
      all(sapply(1:1000, function(x) identical(func(x), correct(x))))
   } else {
      FALSE
   }
}