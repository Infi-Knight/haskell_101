-- Tedious to keep writing [(String,Int)]
-- Introduce a new name for this type
--   type Marklist = [(String,Int)]
type Marklist = [(String, Int)]
mylookup :: String -> Marklist -> Int
mylookup s [] = -100
mylookup s ((name, marks): ms)
  | (s == name) = marks
  | otherwise = mylookup s ms