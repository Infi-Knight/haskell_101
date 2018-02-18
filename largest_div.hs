-- Finds the largest divisor of n, other than n itself
-- Our strategy is to check if n-1 divides n, then for n-2 and so on
-- For negative numbers we convert them to positive number

-- In haskell the functions can be written in any order
-- for example here divsearch is an auxillary function used by largets_div
largest_div :: Int -> Int
largest_div n
  | n > 0 = divsearch n (n-1)
  | otherwise = divsearch (-n) ((-n)-1)

divsearch :: Int -> Int -> Int
divsearch m i
  | (mod m i) == 0 = i
  | otherwise = divsearch m (i-1)