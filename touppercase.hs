import Data.Char
touppercase :: String -> String
mycapitalize :: Char -> Char

touppercase "" = ""
touppercase (c:cs) = (mycapitalize c):(touppercase cs)

mycapitalize ch
  | ('a' <= ch && ch <= 'z') = 
      chr (ord ch + (ord 'A' - ord 'a'))
  | otherwise = ch