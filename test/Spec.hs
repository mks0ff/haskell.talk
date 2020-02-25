
import Test.QuickCheck
import qualified Data.List as List
import FizzBuzzV3

-- any (1==) [1, 2, 3]
-- True

-- any (\x -> x == 1) [1, 2, 3]
-- True

-- null []
-- True

-- null [1, 2]
-- False

prop_fizzBuzz :: [Integer] -> Bool
prop_fizzBuzz xs = null xs || any (\x -> x == "FizzBuzz" || x == "Fizz" || x == "Buzz" || x == x) (fizzbuzz [fizz, buzz] xs)

-- main = quickCheckWith stdArgs { maxSuccess = 2000 } prop_fizzBuzz

main :: IO ()
main = quickCheck prop_fizzBuzz
