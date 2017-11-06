duplicar :: Num a => [a] -> [a]
duplicar []     = []
duplicar [x]    = [x*2]
duplicar (x:xs) = (x*2):(duplicar xs)
