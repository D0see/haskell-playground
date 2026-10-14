module GameOfLife (
    play
) where

buildList:: Int -> a -> [a]
buildList 0 b = []
buildList n b = b:buildList (n - 1) b 




play :: IO()
play = do
    print(buildList 10 $ buildList 10 0)
