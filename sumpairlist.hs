sumpairlist :: [(Int, Int)] -> Int
sumpairlist [] = 0
sumpairlist ((x, y):zs) = x + y + sumpairlist zs