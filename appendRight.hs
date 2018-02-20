-- takes an integer and appends it to the right of a list
appendRight :: Int -> [Int] -> [Int]

appendRight x [] = [x]
appendRight x (y:ys) = y:(appendRight x ys)