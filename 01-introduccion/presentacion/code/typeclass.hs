doubleMe :: (Num a) => a -> a
doubleMe x = x + x

doubleMe :: (Num a) => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleMe :: (Num a) => a -> a
doubleSmallNumber x = (if x > 100 then x else x*2) + 1
