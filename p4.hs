reverseNum :: Int -> Int
reverseNum n = arrayToNum . reverse . numToArray $ n

numToArray :: Int -> [Int]
numToArray 0 = []
numToArray n = d : numToArray ((n - d) `div` 10 :: Int)
    where d = n `mod` 10

arrayToNum :: [Int] -> Int
arrayToNum [] = error "number of empty list"
arrayToNum [x] = x
arrayToNum (x:xs) = x + 10 * arrayToNum xs

isPalindrome :: Int -> Bool
isPalindrome n = n == reverseNum n

searchSpace = reverse [100..999]

z = maximum [prod | i <- searchSpace, j <- [100..i], let prod = i * j, isPalindrome prod]

less than (10^3)^2 -> 10^6. so factor to 10^5. so abccba