-- position c s: first position in s where c occurs
-- return length s if no occurence of c in s
  position :: Char -> String -> Int
  position c "" = 0
  position c (d:ds)
    | c == d = 0
    | otherwise = 1 + (position c ds)
