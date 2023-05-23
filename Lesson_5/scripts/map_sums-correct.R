# Create the list to manipulate
raw_list <- list(c(100, 200, 300), c(400, 500, 600), c(700, 800, 900), c(1000, 1100, 1200), c(1300, 1400, 1500))

# Use map to update the list such that each element is divded by 10
final_sums <- map(raw_list, ~ .x/10)
# Use map again to update the list so that each element is summed
final_sums <- map(final_sums, sum)

#' Challenge solution

# # Base R
# final_sums <- map(raw_list, function (x) {
#   y <- x/10
#   y <- sum(y)
#   y
# } )
# 
# # dplyr
# final_sums <- map(raw_list, function (x) {
#   y <- 
#     (x/10) %>%
#       sum(.)
#   y
# } )
