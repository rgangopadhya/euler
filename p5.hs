-- smallest positive number evenly divisible by all 1..20
-- brute force: loop through all integers, checking if each
-- are divisible by, stop when it is
-- for 1..10, 2520 is the smallest
-- has to be a multiple of all of them
-- so start at 10!?
-- (5 * 2) * (3 * 3) * (2^2) * (7)
-- that is, prime factorize each, keep track of what is implied, and stop
-- multiply what remains and thats the result

-- loop through n-1, see if it divides n
-- if it does, that is a factor, but not necessarily a prime one
-- need a check on if it is prime: loop through and find its divisors
-- alternatively, once you find a divisor, divide n by it, and then apply
-- prime factorize to the results
primeFactorize :: Int -> [Int]
primeFactorize 1 = [1]
primeFactorize n = 

findADivisor :: Int -> Int
findADivisor n = [i | i <- [1..n], ]

allDivisors :: Int -> [Int]
allDivisors n = [i | i <- [1..n], n `mod` i == 0]

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = allDivisors n == [1, n]

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n - 1)
