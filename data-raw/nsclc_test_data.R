# Create fake example data set derived from NSCLC public
library(genieBPC)

genieBPC::set_synapse_credentials()

nsclc_data <- genieBPC::pull_data_synapse("NSCLC", version = "v2.0-public")
nsclc_data <- nsclc_data$NSCLC_v2.0

nsclc_data <- nsclc_data %>%
  # keep(names(.) %in% c("pt_char_NSCLC",
  #                      "ca_drugs_NSCLC",
  #                      "cpt_NSCLC",
  #                      "ca_dx_index_NSCLC")) %>%
  keep(!(names(.) %in% c("fusions", "cna", "mutations_extended"))) %>%
  map(., ~head(.x, 100))

set.seed(10)

nsclc_test_data <- purrr::map(nsclc_data, function(df) {

  new_df <- purrr::map_df(df, function(vec) {
    y <- vec %>%
      purrr::when(
        is.character(.) ~ sample(x = levels(as.factor(.)), size = length(.), replace = TRUE),
        is.numeric(.) & any(!is.na(.)) ~ sample(
          x = c(min(., na.rm = TRUE):max(., na.rm = TRUE)),
          size = length(.), replace = TRUE),
        TRUE ~ NA
      )

    return(y)
  })

  # create fake ID
  new_df <- new_df %>%
    mutate(record_id =
             paste0("GENIE-DFCI-", str_pad(string = 1:100, pad = 0, width = 4)))

  return(new_df)
})


usethis::use_data(nsclc_test_data, overwrite = TRUE)



