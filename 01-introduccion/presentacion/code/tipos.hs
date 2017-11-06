doubleMe :: Int -> Int
doubleMe x = x + x

doubleMe :: Int -> Int -> Int
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = (if x > 100 then x else x*2) + 1
