# Write a function that composes a standardized response email. Your function should take four arguments
# 1) The name of the recipient - recipient
# 2) Any additional message you would like to include - message
# 3) Your name - name
# 4) Sign-off (such as "Best", "Regards", etc.) - closing
# Set defaults for each of the arguments

email <- function(recipient = "Customer", message = "", name = "Customer Service Team", closing = "Best") {
  glue::glue(
    "Dear ", recipient, ",", "\n\n",
     "Thank you for your email! ", message, "\n\n",
     closing, ",", "\n",
     name
   )
}
