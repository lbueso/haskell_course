{-# LANGUAGE NoImplicitPrelude #-}

module Lib where

import Prelude hiding (map, filter, foldr)

{- Implementa la funcion map sobre listas -}
map :: (a -> b) -> [a] -> [b]
map = undefined

{- Implementa la funcion filter sobre listas -}
filter :: (a -> Bool) -> [a] -> [a]
filter = undefined

{- Implementa la funcion foldr sobre listas -}
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr = undefined

{- Implementa las funciones map y filter usando foldr -}
map' :: (a -> b) -> [a] -> [b]
map' = undefined

{- Implementa la funcion filter sobre listas -}
filter' :: (a -> Bool) -> [a] -> [a]
filter' = undefined

{- implementa las funciones del modulo 1 usando unicamente funciones de orden superior -}
-- MAP

{-
Implementa una función que dada una lista de números, calcule el cuadrado de todos
esos número y los devuelva en forma de lista.
Conseto: usa la función square.
-}
squares :: Num a => [a] -> [a]
squares = undefined

{-
Implementa una función que dada una lista de números, devuelva una lista con los
  números convertidos a string.
Conseto: usa la función show
-}
stringize :: Show a => [a] -> [String]
stringize = undefined

-- FILTER

{-
  Implementa una función que devuelve True si un número dado es mayor que 100, en otro caso, False
-}
big :: (Num a, Ord a) => a -> Bool
big = undefined

{-
  Implementa una función que dada una lista de números, devuelve una lista con solo los pares.
-}
evens :: Integral a => [a] -> [a]
evens = undefined

{-
  Implementa una función que dada una lista de números, devuelva una lista con solo los
  números mayores que 100.
-}
bigs :: (Num a, Ord a) => [a] -> [a]
bigs = undefined

-- FOLD

{-
  Implementa una función que dada una lista, devuelva la longitud de la lista.
-}
length :: [a] -> Int
length = undefined

{-
  Implementa una función que, dada una lista de números, devuelva la suma de ellos.
-}
sum :: Num a => [a] -> a
sum = undefined

{-
  Implementa una función que dada una lista de números, devuelva el mayor número de la lista.
-}
maximum :: (Num a, Ord a) => [a] -> a
maximum = undefined

{-----------------------------------------------------------------------------------------------}
{- Utilizando el arbol binario definido a continuacion -}
data BinaryTree a = Leaf
     | Node (BinaryTree a) a (BinaryTree a)

{- Implementa el mapTree -}
mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree = undefined

{- Implementa la funcion foldTree-}
foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree = undefined
