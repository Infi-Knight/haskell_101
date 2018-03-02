-- Haskell does its computations by following lazy evaluation
-- hence in this infinite list you can take head (infinite_list)
-- Haskell allows you to create infinite lists using the range notation
-- e.g [m..]  = [m, m+1, m+2, ]
-- [m, m+2..]
infinite_list :: [Int]
infinite_list = infiaux 0
  where
    infiaux n = n:(infiaux (n+1))