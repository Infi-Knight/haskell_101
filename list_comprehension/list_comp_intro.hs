-- list comprehension combines map and filter
-- it's syntax is almost similar to set comprehension in maths
divisors_n :: Int -> [Int]
divisors_n n = [x | x <- [1..n], (mod n x) == 0]

-- primes below n
primes_n :: Int -> [Int]
primes_n n = [x | x <- [1..n], (divisors_n x == [1,x])]

-- list comprehension can use multiple generators
-- find all pairs of integers below n
multi_gen :: Int -> [(Int, Int)]
-- x generates y
multi_gen n = [(x, y) | x <- [1..n], y <- [1..n]]

-- all pythagorean triplets below 100
pytha_n :: Int -> [(Int, Int, Int)]
-- to prevent duplicates we use the fact that value of y depends upon x
-- value of z depends upon y
pytha_n n = [(x, y, z) | x <- [1..n], y <- [(x+1)..n], z <- [(y+1)..n], x*x + y*y == z*z]