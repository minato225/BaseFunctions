module Main (main) where

import Task1.ListSum (lsum)

arr::[Int] 
arr = [1,2,3]

main :: IO ()
main = do
    print $ lsum arr