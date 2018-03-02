-- take n l 
-- it returns first n elements of list l

-- p1 returns [1,2,3,4]
p1 = take 4 [1,2,3,4,5,6,7,8,9]

-- takeWhile uses a property to determine the prefix
-- takeWhile (a -> Bool) -> [a] -> [a]
-- p2 returns [9,10]
p2 = takeWhile (>7) [9,10,3,78]

-- dropWhile is symmetric to drop except that it uses a property
p3 = dropWhile (<5) [1,2,34,45]

-- map f l takes each element of l and applies f to it
-- zipWith takes two lists and combines them using a function:
p4 = zipWith (+) [1,2,3] [4,5,6,8] -- returns [5,7,9]
-- thus signature of zipWith is
-- zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

-- zip simply combines two lists into a list of pairs
-- zip :: [a] -> [b] -> [(a, b)]
p5 = zip [1,2,3] [4,5,6,7] -- [(1,4),(2,5),(3,6)]