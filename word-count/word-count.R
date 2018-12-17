word_count <- function(input) {
    # Convert input to lower case and remove leading/trailing whitespace
    sanitized_input <- tolower(trimws(input, "both"))

    # Split the input into a vector on a regex that matches wihtespace and
    # punctuation
    words <- strsplit(sanitized_input, "(\\s|[[:punct:]])+")[[1]]

    # Remove any non-alphanumeric characters
    words <- gsub("[^[:alnum:]]", "", words)

    # Iterate over the word vector with a function that returns the number of
    # times that the word appears in the vector
    word_counts <- lapply(unique(words), function(x) sum(words == x))

    # Add the names and return the list
    names(word_counts) <- unique(words)
    word_counts
}
