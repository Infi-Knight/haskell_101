-- insert x into list l at alll possible positions
-- and return teh resulting set of lists
interleave :: a -> [a] -> [[a]]
interleave x [] = [[x]]
interleave x (y:ys) = 
  (x:y:ys) : map (y:) (interleave x ys)