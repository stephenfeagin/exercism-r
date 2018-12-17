rotate <- function(text, key) {
    # This type of puzzle is one of the times that having R be 1-indexed makes
    # things more difficult
    offset <- key + 1

    # Create new key vectors based on the value of the key variable
    key_upper <- c(LETTERS[seq(offset %% 26, 26)],
                   LETTERS[seq_len(key %% 26)])
    key_lower <- c(letters[seq(offset %% 26, 26)],
                   letters[seq_len(key %% 26)])

    # Separate the text into its constituent characters
    chars <- strsplit(text, "")[[1]]

    # Iterate over each of the characters, and match the letter to the
    # letter in the correct key at the index that it is at in the regular
    # alphabet
    cipher <- lapply(chars, function(c) {
        if (c %in% LETTERS) {
            key_upper[LETTERS == c]
        } else if (c %in% letters) {
            key_lower[letters == c]
        } else {
            c
        }
    })

    # Collapse them all back into a single string
    paste0(cipher, collapse = "")
}
