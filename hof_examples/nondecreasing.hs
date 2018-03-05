nondecreasing :: [Int] -> Bool
nondecreasing xs = and [x <= y | (x, y) <- zip xs (tail xs)]