-- builtin equivalent is foldr
my_foldr :: (a -> b -> b) -> b -> [a] -> b
my_foldr f v [] = v
my_foldr f v (x:xs) = f x (my_foldr f v xs)

-- there is a symmetric function foldl which starts from head of a list
my_foldl :: (a -> b -> a) -> a -> [b] -> a
my_foldl f v [] = v
my_foldl f v (x:xs) = foldl f (f v xs) xs