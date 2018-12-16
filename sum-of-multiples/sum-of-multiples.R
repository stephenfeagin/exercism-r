sum_of_multiples <- function(factors, limit) {
    # Get the list of multiples below limit for each factor
    multiples <- lapply(factors, function(x) {

        # seq_len(limit - 1) is a vector of all natural numbers below limit
        # We extract those elements whose mod x (where x is the given factor)
        # is equal to zero
        seq_len(limit - 1)[seq_len(limit - 1) %% x == 0]
    })

    # unlist(multiples) collapses all of the items of the list into a single
    # vector, and unique() removes the duplicates
    # We then simply take the sum
    sum(unique(unlist(multiples)))
}
