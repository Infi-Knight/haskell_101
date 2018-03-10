-- computes all the partitions of a list e.g:
-- part [1,2,3] =  
--   [[[1],[2],[3]],[[1,2],[3]],[[1],[2,3]],[[1,2,3]]]
part :: [a] -> [[[a]]]  
part [x] = [[[x]]]  
part (x:xs) =  [(x:head l):(tail l)  | l <- part xs] ++ [[x]:l | l <- part xs]