leap <- function(year) {
    if (year %% 4 == 0) {
        if (year %% 400 == 0) {
            return(year %% 100 == 0)
        } else {
            return(year %% 100 != 0)
        }
    }
    return(FALSE)
}
