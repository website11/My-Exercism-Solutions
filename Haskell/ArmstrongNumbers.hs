module ArmstrongNumbers (armstrong) where

lastDigit :: Int -> Int
lastDigit n = mod n 10
    
dropLastDigit :: Int -> Int
dropLastDigit n = div n 10

toDigits :: Int -> [Int]
toDigits n = if n <= 0
                then []
                else toDigits (dropLastDigit n) ++ [lastDigit n]


armstrongHelper :: (Foldable t, Integral b, Num a, Eq a) => a -> b -> t a -> Bool
armstrongHelper n xn xs = foldl(\acc x -> acc + x^xn) 0 xs == n

armstrong :: Int -> Bool
armstrong n = armstrongHelper n (length(show n)) (toDigits n)
