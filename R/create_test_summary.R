




create_test_summary <- function(tbl_name,
                                save_folder,
                                input_vars = c("New Starts",
                                               "11/14/20 - 01/03/21", 
                                               "FAFSA Completion Rates Improved Slightly", 
                                               "Additional Experimentation")){
  
  # load package
  library(magrittr)
  library(gt)
  
  # table
  tibble::tibble(
    `  ` = c("North Star Metric", "Date Range", "Test Metric - Overall Result", "Recommendation"),
    ` `  = c(input_vars)
  ) %>% 
    gt() %>%
    tab_header(title = md("__Experiment Outcome__")) %>%
    cols_align(align = c("right"), columns = vars(` `)) %>% 
    tab_options(heading.align = "Left",
                table.background.color = "#efefef",
                column_labels.background.color = "black",
                heading.border.bottom.color = "black",
                heading.background.color = "#0a3370",
                table.width = 750) %>% 
    gtsave(path = here::here("imgs", paste0("/", save_folder)),
           filename = paste0(tbl_name,".test_summary.png"))
  
  
  
}










