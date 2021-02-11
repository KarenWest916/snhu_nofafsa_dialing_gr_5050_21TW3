



# import helper function
source(here::here("R","create_test_summary.R"))


# creates test summary table
create_test_summary(
  tbl_name = "test_summary", # name of image
  save_folder = ".", # save folder location
  input_vars = c("New Starts",
                 "11/12/2020 - 1/3/2021", # Date range of test
                 "FAFSA Completion Rate - Increased Slightly", # Test result 
                 "Additional Experimentation" ) # Recommendation
)

