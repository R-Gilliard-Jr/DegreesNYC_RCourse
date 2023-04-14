survey_filtered <- nyc_survey_total %>%
  # Keep response rates above .95
  filter(Total.Student.Response.Rate >= .95)