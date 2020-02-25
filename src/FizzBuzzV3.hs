module FizzBuzzV3
       ( fizzbuzz,
         rule,
         fizz,
         buzz
       ) where

import Data.Foldable
import Data.Maybe

-- third try, monoid !
type FizzRule = Integer -> Maybe String

rule :: Integer -> String -> FizzRule
rule n m i =
    case i `mod` n of
         0 -> Just m
         _ -> Nothing

fizz = rule 3 "Fizz"
buzz = rule 5 "Buzz"
-- boom = rule 2 "Boom"


-- ghci
-- :m + Data.Foldable
-- :m + Data.Maybe

-- show 2
-- "2"

-- fold [fizz, buzz] 3
-- Just "Fizz"

-- fold [buzz] 3
-- Nothing

-- fromMaybe 2 (Just 3)
-- 3

-- fromMaybe 2 (Nothing)
-- 2

-- map (+1) [1, 2, 3]
-- [2,3,4]

fizzbuzz :: (Functor f, Foldable t) => t (Integer -> Maybe String) -> f Integer -> f String
fizzbuzz rules = fmap (fromMaybe <$> show <*> ruleSet)
  where
    ruleSet = fold rules

