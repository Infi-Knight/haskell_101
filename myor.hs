-- In this 'myor' function last line is reached when all the other cases
-- have been exhausted. So we put wildcards and write the expected output
myor :: Bool -> Bool -> Bool
myor True _ = True
myor _ True = True
myor _ _ = False
