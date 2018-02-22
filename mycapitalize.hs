import Data.Char
mycapitalize :: Char -> Char
mycapitalize ch
  | ('a' <= ch && ch <= 'z') = 
      chr (ord ch + (ord 'A' - ord 'a'))
  | otherwise = ch