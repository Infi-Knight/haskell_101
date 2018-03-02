-- this computation works because of list comprehension and
-- the lazy evaluation
primes :: [Int]
primes = sieve [2..]
  where
    sieve (x:xs) = x:(sieve [y | y <- xs, mod y x > 0])