transcribe_char <- function(char) {
    switch(char,
           "G" = "C",
           "C" = "G",
           "T" = "A",
           "A" = "U")
}

to_rna <- function(dna) {
    chars <- strsplit(dna, "")[[1]]
    if (!all(chars %in% c("G", "C", "T", "A"))) {
        stop("Invalid DNA input")
    }
    chars_transcribed <- vapply(X = chars, 
                                FUN = transcribe_char, 
                                FUN.VALUE = character(1))
    paste(chars_transcribed, collapse = "")
}
