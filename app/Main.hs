module Main where

import FizzBuzzV3

-- ghci
-- mapM_ putStrLn ["1", "2", "3"]

-- main = mapM_ putStrLn (fizzbuzz [fizz, buzz] [3, 5, 7, 8, 9, 15])
-- main = putStrLnList (fizzbuzz [fizz, buzz] [3, 5, 7, 8, 9, 15])

putStrLnList :: [String] -> IO ()
putStrLnList = mapM_ putStrLn


main :: IO ()
main = putStrLnList $ fizzbuzz [fizz, buzz] [3, 5, 7, 8, 9, 15]
