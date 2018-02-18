-- _ can be used as a wildcard which symbolises that the functions
-- doesn't really care about that entity.
-- All this is a part of pattern matching
myand :: Bool -> Bool -> Bool
myand True b = b
myand False _ = False
