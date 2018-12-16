bob <- function(input) {
    # The case of only whitespace is the most straightforward, so return
    # immediately
    if (grepl("^\\s*$", input)) {
        return("Fine. Be that way!")
    }

    # If input is not only whitespace, then we need to trim the trailing
    # whitespace so that we can match on a question mark at the end of the
    # string
    input <- trimws(input, "right")
    if (grepl("\\?$", input)) {
        # If there are no lower case letters and at least one upper case
        # letter, it's a question yelled
        if (grepl("^[^a-z]+\\?$", input) &&
            grepl("[A-Z]+", input)) {
            output <- "Calm down, I know what I'm doing!"

        # Otherwise, it's just a normal question
        } else {
            output <- "Sure."
        }

    # If there are no lower case letters and at least one upper case letter
    # (without a question mark at the end), then it's yelling
    } else if (grepl("^[^a-z]+$", input) &&
               grepl("[A-Z]+", input)) {
            output <- "Whoa, chill out!"
    } else {
        output <- "Whatever."
    }
    output
}
