import Test.HUnit
import System.Exit
import Factorial as F

testZeroCase :: Test
testZeroCase = 
    TestCase $ assertEqual "Factorial 1" 
        1 $ F.factorial 1
        
testNonZeroCase :: Test
testNonZeroCase = 
    TestCase $ assertEqual "Factorial 10"
         3628800 $ F.factorial 10

main :: IO ()
main = do
        counts <- runTestTT ( test [
            testZeroCase,
            testNonZeroCase
            ])
        if errors counts + failures counts == 0
            then exitSuccess
            else exitFailure
