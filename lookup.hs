-- List of pairs (Name,Marks) — [(String,Int)]
-- Given a name, find the marks
mylookup :: String -> [(String, Int)] -> Int
mylookup p [] = -100
mylookup p ((name, marks): ms)
  |(p == name) = marks
  | otherwise = mylookup p ms
