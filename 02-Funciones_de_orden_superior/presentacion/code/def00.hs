applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

flip :: (a -> b -> c) -> (b -> a -> c)
flip f = g
  where g x y = f y x
