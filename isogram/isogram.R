is_isogram <- function(word) {
    # Extract just the alpha characters
    chars <- gsub("[^[:alpha:]]", "", tolower(word))

    # Split into a vector
    chars_vec <- strsplit(chars, "")[[1]]

    # If the length of the original vector is equal to the length of the vector
    # with duplicates removed, then the word is an isogram
    length(chars_vec) == length(unique(chars_vec))
}
