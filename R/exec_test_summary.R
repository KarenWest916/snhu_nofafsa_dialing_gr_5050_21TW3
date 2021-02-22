



# import helper function
source(here::here("R","create_test_summary.R"))


# creates test summary table
create_test_summary(
  tbl_name = "nofafsa_", # name of image

  input_vars = c("FAFSA Complete Rate",
                 "12/10/20 - 2/22/21", # Date range of test
                 "FAFSA Completion Rate - Decreased Slightly", # Test result 
                 "Additional Experimentation" ) # Recommendation
)

