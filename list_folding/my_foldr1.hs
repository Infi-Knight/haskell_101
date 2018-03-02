-- sometimes we don't have a natural initial value
-- in this case we can use the builtin foldr1 which works as follows
my_foldr1 :: (a -> a -> a) -> [a] -> a
my_foldr1 f [x] = x
my_foldr1 f (x:xs) = f x (my_foldr1 f xs)