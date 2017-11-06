multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multThree' :: (Num a) => a -> (a -> (a -> a))
multThree' x y z = x * y * z
