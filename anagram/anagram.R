anagram <- function(subject, candidates) {
    # Make both arguments lower case, for case-insensitivity, and remove exact
    # matches
    subject <- tolower(subject)
    # I want to maintain the original casing of the candidates objects, but
    # remove the exact matches
    candidates <- candidates[tolower(candidates) != subject]
    # I want only the lower case version of only those elements in candidates
    # that are not exact matches of subject
    candidates_lower <- tolower(candidates)

    # Split and sort the subject and candidates
    split <- sort(strsplit(subject, "")[[1]])
    candidates_split <- lapply(strsplit(candidates_lower, ""), sort)

    # Iterate over candidates split and return the logical for whether all
    # elements of that iteration match all elements in split
    matches <- vapply(candidates_split, function(x) all(x == split), logical(1))

    # If all values of matches are FALSE, return NULL
    if (!any(matches)) return(NULL)

    candidates[matches]
}
