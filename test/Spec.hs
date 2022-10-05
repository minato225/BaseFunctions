import Test.HUnit
import System.Exit
import Factorial as F
import GCD

tests = test [  
    -- Factorial
    "Factorial 1"   ~: 1        ~=? F.factorial 1,
    "Factorial 10"  ~: 3628800  ~=? F.factorial 10,

    -- GCD
    "GCD 2, 4" ~: 2 ~=? myGcd 2 4,
    "GCD 1, 5" ~: 1 ~=? myGcd 1 5,
    "GCD 3, 6" ~: 3 ~=? myGcd 3 6]

main :: IO ()
main = do
        counts <- runTestTT tests
        if errors counts + failures counts == 0
            then exitSuccess
            else exitFailure
