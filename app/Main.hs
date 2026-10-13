module Main (main) where


fizzbuzz :: Int -> [String]
fizzbuzz n 
    | n == 0 = []
    | rem n 3 == 0 && rem n 5 == 0 = "FizzBuzz": fizzbuzz (n - 1)
    | rem n 3 == 0 = "Fizz": fizzbuzz (n - 1)
    | rem n 5 == 0 = "Buzz": fizzbuzz (n - 1)
    | otherwise = show n: fizzbuzz (n - 1)

reverseList :: [a] -> [a] -> [a]
reverseList y [x] = x: y
reverseList y (x:xs) = reverseList (x:y) xs

reverseList' = reverseList []

main :: IO()
main = do
    print(reverseList' . fizzbuzz $ 15)
