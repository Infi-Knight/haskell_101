-- map applies a function f to each memeber of a list l and 
-- produces a list of smame length
-- e.g map (+3) [1,2,3]

-- sumLength calculates the sum of all inner lists
sumLength :: [[a]] -> Int
sumLength l = sum (map length l)