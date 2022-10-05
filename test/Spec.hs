import Test.HUnit
import System.Exit
import Factorial as F

tests = test [  
    "test1" ~: "(Factorial 1)" ~: 1 ~=? F.factorial 1,
    "test2" ~: "(Factorial 10)" ~: 3628800 ~=? F.factorial 10 ]

main :: IO ()
main = do
        counts <- runTestTT tests
        if errors counts + failures counts == 0
            then exitSuccess
            else exitFailure
