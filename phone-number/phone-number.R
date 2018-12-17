parse_phone_number <- function(number_string) {
    # Make a variable that replaces all non-numeric characters with ""
    all_nums <- gsub("\\D", "", number_string)

    # If the all_nums variable does not match the pattern required, return NULL
    pattern <- "^1?[2-9]\\d{2}[2-9]\\d{6}$"
    if (!grepl(pattern, all_nums)) return(NULL)

    # Return all_nums, removing the first digit if it is a '1'
    gsub("^1", "", all_nums)
}
