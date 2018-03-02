-- map itself can be visualised as follows
mymap :: (a->b) -> [a] -> [b]
mymap f [] = []
mymap f (x:xs) = (f x):(mymap f xs)