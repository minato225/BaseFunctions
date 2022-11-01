module Main (main) where

import ListSum (lsum)
import Lib

main :: IO ()
main = do
    print $ lsum [1,2,3]