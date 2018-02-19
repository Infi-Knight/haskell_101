-- head returns the front of a list
-- tail returns a list
-- head and tail are undefined for an empty list
-- every non empty list can be uniquely decomposed as its head and its tail
-- i.e (x:xs) 
myListLength :: [Int] -> Int
myListLength [] = 0

-- so we can use pattern matching instead of using tail function
-- and directly match the tail of the list
-- myListLength l = 1 + myListLength (tail l)
-- note the use of brackets. We need to use them because of
-- higher precedence of function application the

myListLength (x:xs) = 1 + myListLength xs