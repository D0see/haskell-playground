module RandomFuncs (
    fizzbuzz,
    reverseList',
    sumList',
    buildDecreasingList, 
    fibo,
    exec
) where


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

reverseList' :: [a] -> [a]
reverseList' = reverseList []

sumList :: Int -> [Int] -> Int
sumList acc [] = acc
sumList acc (x:xs) = sumList (acc + x) xs 

sumList' :: [Int] -> Int
sumList' = sumList 0

buildDecreasingList :: Int -> [Int]
buildDecreasingList n
    | n == 1 = [0]
    | otherwise = n: buildDecreasingList(n - 1)

fibo :: Int -> Int
fibo n 
    | n > 1 = fibo(n - 1) + fibo(n - 2)
    | otherwise = 1 

exec :: IO()
exec = do
    print(reverseList' . fizzbuzz . sumList' . buildDecreasingList . fibo $ 5  )
