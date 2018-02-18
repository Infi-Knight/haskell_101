-- Calculates the integer logarithm of a number
-- e.g intlog 60 at base 2 = 5 because 2^5 < 60 and 2^6 > 64

intlog :: Int -> Int -> Int
intlog k 1 = 0
intlog k n
  | n >= k = 1 + intlog k (div n k)
  | otherwise = 0 