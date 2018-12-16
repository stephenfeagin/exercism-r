# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
    if (nchar(strand1) != nchar(strand2)) {
        stop("strand1 and strand2 must be equal length")
    }
    strand1 <- strsplit(strand1, "")[[1]]
    strand2 <- strsplit(strand2, "")[[1]]

    sum(strand1 != strand2)
}
