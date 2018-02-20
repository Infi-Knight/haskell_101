-- checks if the elements in the list are in alternating order
-- i.e values should strictly increase and decrease at alternate positions
-- Alternating list can start in downup or updown order

-- Thus tail of a downup list will be updown
-- tail of a updown list will be downup

-- This is an example of mutually recursive functions
alternating :: [Int] -> Bool
alternating l = (updown l) || (downup l)

updown :: [Int] -> Bool
updown [] = True
updown [x] = True
updown (x:y:ys) = (x < y) && (downup (y:ys)) 

downup :: [Int] -> Bool
downup [] = True
downup [x] = True
downup (x:y:ys) = (x > y) && (updown (y:ys))