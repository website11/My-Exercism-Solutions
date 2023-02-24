module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving Eq

ageOn :: Planet -> Float -> Float
ageOn planet seconds
        | planet == Mercury = earth_days / (365.25 * 0.2408467)
        | planet == Venus = earth_days / (365.25 * 0.61519726)
        | planet == Earth = earth_days / 365.25
        | planet == Mars = earth_days / (365.25 * 1.8808158)
        | planet == Jupiter = earth_days / (365.25 * 11.862615)
        | planet == Saturn = earth_days / (365.25 * 29.447498)
        | planet == Uranus = earth_days / (365.25 * 84.016846)
        | planet == Neptune = earth_days / (365.25 * 164.79132)
    
        where
            earth_days = ((seconds / 60) / 60) / 24

