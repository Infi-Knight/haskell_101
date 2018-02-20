-- reverses a list

-- The : operator is known as the "cons" operator and is used to prepend
-- a head element to a list. So [] is a list and x:[] is prepending x to 
-- the empty list making a the list [x]. If you then cons y:[x] you end 
-- up with the list [y, x] which is the same as y:x:[].

-- The ++ operator is the list concatenation operator which takes two lists 
-- as operands and "combine" them into a single list. So if you have the 
-- list [x] and the list [y] then you can concatenate them like this: 
-- [x]++[y] to get [x, y].

-- Notice that : takes an element and a list while ++ takes two lists.

reverse_list :: [Int] -> [Int]

reverse_list [] = []
reverse_list (x:xs) = (reverse_list xs) ++ [x]