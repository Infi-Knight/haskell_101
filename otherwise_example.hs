-- In traditional languages 'else' can be used as a catch-all statement
-- In haskell 'otherwise' is used
factorial :: Int -> Int
factorial n
  | n == 0 = 1
  | n > 0 = n * (factorial(n-1))
  | otherwise = factorial(-n)
