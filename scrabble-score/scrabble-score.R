scrabble_score <- function(input){
    # Split the input into lowercase characters
    chars <- strsplit(tolower(input), "")[[1]]

    # Make a lookup list for the scores
    lookup <- list(
        "aeioulnrst" = 1,
        "dg" = 2,
        "bcmp" = 3,
        "fhvwy" = 4,
        "k" = 5,
        "jx" = 8,
        "qz" = 10
    )

    # Lookup the score based on the name of element in the lookup list
    scores <- vapply(chars, function(x) {
        item <- grep(x, names(lookup))
        lookup[[item]]
    }, numeric(1))

    # Return the sum of the scores
    sum(scores)
}
