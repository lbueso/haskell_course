{-# LANGUAGE NoImplicitPrelude #-}

module Lib where

import Prelude hiding (head, tail, init, last, sum, length, maximum, even, concat, reverse)

{-
  Implementa y define el tipo de la función "incrementar"
-}

incrementar x = x + 1

{-
  Implementa la función "mul" y define el tipo de la función.
-}

mul = undefined

{-
  Implementa la función "duplicar" en base a "mul"
-}

duplicar = undefined


{-
Lista:
  Una lista cuyos elementos son de tipo t, podría ser una
lista vacía [] o un elemento de tipo t añadido a la cabeza
de una secuencia de elementos de tipo t. (eh:et)
-}

-- Funciones auxiliares

{-
Implementa una función que dada una lista, devuelva su primer elemento.
Si es vacía, la lista devuelve:
   error "No se puede obtener un elemento de una lista vacía"
-}
head :: [a] -> a
head = undefined

{-
Implementa una función que data una lista, devuelva toda la lista excepto el primer elemento.
-}
tail :: [a] -> [a]
tail = undefined

{-
Implementa una función que dada una lista devuelva toda la lista excepto el último elemento.
-}
init :: [a] -> [a]
init = undefined


{-
Implementa una función que dada una lista devuelva el último elemento.
-}
last :: [a] -> a
last = undefined

{-
Implementa una función que dada un lista de elementos de tipo a, devuelva
  una lista con valor dado al final.
-}
append :: [a] -> a -> [a]
append = undefined

{-
Implementa una función que dada una lista, devuelva la lista del revés.
Conseto: usa la función myAppend
-}
reverse :: [a] -> [a]
reverse = undefined

{-
Implementa una función que dadas dos litas, devuelva una sola lista que es la
  concatenación de las dos listas.
Conseto: usa myAppen
-}
concat :: [a] -> [a] -> [a]
concat = undefined

-- MAP
{-
Implementa una función que dado un número cualquiera, calcule su cuadrado.
-}
square :: Num a => a -> a
square = undefined

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
  Implementa una función que devuelve True si un número dado es par, en caso contrario, False
-}
even :: Integral a => a -> Bool
even = undefined


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
{-
  De la Kata https://www.codewars.com/kata/complementary-dna

  El ADN es una proteína compleja que se encuentra en el
  núcleo de las células y constituye el principal constituyente
  del material genético de los seres vivos.

  http://en.wikipedia.org/wiki/DNA
  En las cadenas de ADN, los símbolos "A" y "T" se complementan,
  al igual que "C" y "G".

  Dada una lista de caracteres (puede que vacía) devolver la complementaria.

  coadn [] -> []
  coadn ["A","T","G","C"] -> ["T","A","C","G"]
  coadn ["G","T","A","T"] -> ["C","A","T","A"]
  coadn ["A","A","A","A"] -> ["T","T","T","T"]
-}

-- ADN complementario (co-adn)
coadn :: [Char] -> [Char]
coadn = undefined

{-

  Y ahora para más diversión con tipos <3
-}

data Nucleotido = A | T | G | C
type ADN = [Nucleotido]
