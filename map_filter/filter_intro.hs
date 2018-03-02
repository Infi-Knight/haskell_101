-- filter takes a property and applies it to a list to
-- filter the elements based on wether they follow the property or not
-- property is a function which takes an argument of type of list and maps it to a boolean
myfilter :: (a -> Bool) -> [a] -> [a]
myfilter p [] = []
myfilter p (x:xs)
  | (p x) = x:(myfilter p xs)
  | otherwise = myfilter p xs