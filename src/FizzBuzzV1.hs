module FizzBuzzV1
       ( fizzbuzz
       ) where

fizzbuzz :: [Integer] -> [String]
fizzbuzz = map fizzlogic

-- second try, using guard
fizzlogic :: Integer -> String
fizzlogic i
  | i `mod` 3 == 0 && i `mod` 5 == 0 = "FizzBuzz"
  | i `mod` 3 == 0                   = "Fizz"
  | i `mod` 5 == 0                   = "Buzz"
  | otherwise                        = show i

