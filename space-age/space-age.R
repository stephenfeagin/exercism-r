space_age <- function(seconds, planet) {

    # To get the number of earth years a person is, divide the number of
    # seconds by the number of seconds in one earth year
    earth_years <- seconds / 31557600

    # If the planet provided is earth, we're done
    if (tolower(planet) == "earth") return (round(earth_years, 2))

    # Otherwise, we need to calculate a factor to convert earth years into
    # years on the planet
    years <- function(planet) {
        switch(tolower(planet),
                   "mercury" = 0.2408467,
                   "venus" = 0.61519726,
                   "mars" = 1.8808158,
                   "jupiter" = 11.862615,
                   "saturn" = 29.447498,
                   "uranus" = 84.016846,
                   "neptune" = 164.79132)
    }

    # Divide earth years by the conversion factor
    round(earth_years / years(tolower(planet)), 2)
}
