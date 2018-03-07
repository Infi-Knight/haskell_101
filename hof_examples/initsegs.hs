-- which returns the list of initial segments of a list
initsegs :: [Int] -> [[Int]]
initsegs [] = [[]]
initsegs (x:xs) = 
  []:map (x:) (initsegs xs)