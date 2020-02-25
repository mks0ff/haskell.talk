module FizzBuzzV0
       ( fizzbuzz
       ) where

fizzbuzz :: [Integer] -> [String]
fizzbuzz = map fizzlogic


-- first 
fizzlogic :: Integer -> String
fizzlogic i =
  if i `mod` 3 == 0 && i `mod` 5 == 0 then
    "FizzBuzz"
  else if i `mod` 3 == 0 then
    "Fizz"
  else if i `mod` 5 == 0 then
    "Buzz"
  else
    show i
