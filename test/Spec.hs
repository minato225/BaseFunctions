import Test.HUnit ((~=?),(~:),runTestTT, test, errors, failures)
import System.Exit
import Factorial as F
import GCD
import Power (power, fasterPower)

tests = test [  
    -- Factorial
    "Factorial 1"   ~: 1        ~=? F.factorial 1,
    "Factorial 10"  ~: 3628800  ~=? F.factorial 10,

    -- GCD
    "GCD 2, 4" ~: 2 ~=? myGcd 2 4,
    "GCD 1, 5" ~: 1 ~=? myGcd 1 5,
    "GCD 3, 6" ~: 3 ~=? myGcd 3 6,
    
    -- Power
    "2^2"       ~: 4    ~=? power 2 2,
    "1^1000"    ~: 1    ~=? power 1 1000,
    "0^1000"    ~: 0    ~=? power 0 1000,
    "2^10"      ~: 1024 ~=? power 2 10,
    
    -- FastPower
    "2^2" ~: 4 ~=? fasterPower 2 2,
    "1^1000" ~: 1 ~=? fasterPower 1 1000,
    "0^1000" ~: 0 ~=? fasterPower 0 1000,
    "2^10" ~: 1024 ~=? fasterPower 2 10]

main :: IO ()
main = do
        c <- runTestTT tests
        if errors c + failures c == 0
            then exitSuccess
            else exitFailure
