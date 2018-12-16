square <- function(n) {
    stopifnot(n >= 1 && n <= 64)
    2^(n - 1)
}

total <- function() {
    sum(square(1:64))
}
