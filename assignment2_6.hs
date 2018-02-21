-- Consider the following function f.

-- f c "" 			= ""
-- f c (d:ds) 
-- 	| (c == d)	= d: temp
-- 	| otherwise	= temp
-- 	where
-- 		temp = f c ds
		
-- What is the value of f 'a' "abracadabra" ?

f :: Char -> String -> String
f c "" = ""
f c (d:ds)
  | (c == d) = d: temp
  | otherwise = temp
  where 
    temp = f c ds