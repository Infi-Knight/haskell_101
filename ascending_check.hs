-- checks if a list of integers is in ascending order
ascending  :: [Int] -> Bool

ascending [] = True
ascending [x] = True

-- now we have reached the pattern where there are atleast two
-- elements in the list

-- Note the two level pattern: We can decompose any number of levels 
-- provided they exist
-- x:y:ys is a short form of x:(y:ys)
ascending (x:y:ys) = (x <= y) && ascending (y:ys)