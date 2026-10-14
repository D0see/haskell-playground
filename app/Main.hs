module Main (main) where


fizzbuzz :: Int -> [String]
fizzbuzz n 
    | n == 0 = []
    | rem n 3 == 0 && rem n 5 == 0 = "FizzBuzz": fizzbuzz (n - 1)
    | rem n 3 == 0 = "Fizz": fizzbuzz (n - 1)
    | rem n 5 == 0 = "Buzz": fizzbuzz (n - 1)
    | otherwise = show n: fizzbuzz (n - 1)

reverseList :: [a] -> [a] -> [a]
reverseList acc [] = acc
reverseList acc [x] = x: acc
reverseList acc (x:xs) = reverseList (x:acc) xs

sumList :: Int -> [Int] -> Int
sumList acc [] = acc
sumList acc (x:xs) = sumList (acc + x) xs 

buildDecreasingList :: Int -> [Int]
buildDecreasingList n
    | n == 1 = [0]
    | otherwise = n: buildDecreasingList(n - 1)

main :: IO()
main = do
    let reverseList' = reverseList []
    let sumList' = sumList 0
    -- print(reverseList' . fizzbuzz $ 15)
    print(reverseList' . fizzbuzz . sumList' . buildDecreasingList $ 15  )
