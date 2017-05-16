module Lists where

{-
Lista:
  Una lista cuyos elementos son de tipo t, podría ser una
lista vacía [] o un elemento de tipo t añadido a la cabeza
de una secuencia de elementos de tipo t. (eh:et)
-}


{-
TESTING LISTS
-}
l1 = [1,2,3,4,5,6,7,8,9,0]

l2 = [9,1,2,8,3,4,7,6,5,0]

l3 = [90,91,102,81,3,104,1007,96,50,1000]

l4 = []

-- Funciones auxiliares

{-
Implementa una función que dada una lista, devuelva su primer elemento.
Si es vacía, la lista devuelve: 
   error "No se puede obtener un elemento de una lista vacía"
-}
myHead :: [a] -> a
myHead [] = error "No se puede obtener un elemento de una lista vacía"
myHead [x] = x
myHead (x:xs) = x

{-
Implementa una función que data una lista, devuelva toda la lista excepto el primer elemento.
-}
myTail :: [a] -> [a]
myTail l = error "todo"

{-
Implementa una función que dada una lista devuelva toda la lista excepto el último elemento.
-}
myInit :: [a] -> [a]
myInit = error "todo"


{-
Implementa una función que dada una lista devuelva el último elemento.
-}
myLast :: [a] -> [a]
myLast l = error "todo"

{-
Implementa una función que dada un lista de elementos de tipo a, devuelva
  una lista con valor dado al final.
-}
myAppend :: [a] -> a -> [a]
myAppend l e = error "todo"

{-
Implementa una función que dada una lista, devuelva la lista del revés.
Conseto: usa la función myAppend
-}
myReverse :: [a] -> [a]
myReverse = error "todo" 

{-
Implementa una función que dadas dos litas, devuelva una sola lista que es la
  concatenación de las dos listas.
Conseto: usa myAppen
-}
myConcat :: [a] -> [a] -> [a]
myConcat l1 l2 = error "todo"

                 
-- MAP
{-
Implementa una función que dado un número cualquiera, calcule su cuadrado.
-}
square :: Num a => a -> a
square n = error "todo"

{-
Implementa una función que dada una lista de números, calcule el cuadrado de todos
esos número y los devuelva en forma de lista.
Conseto: usa la función square.
-}
squares :: Num a => [a] -> [a]
squares l = error "todo"

{-
Implementa una función que dada una lista de números, devuelva una lista con los
  números convertidos a string.
Conseto: usa la función show
-}
stringize :: Show a => [a] -> [String]
stringize l = error "todo"

{-
myMap es una función que recibe una función y una lista.
Esta función aplica la función recibida a cada elemento de la lista dada y devuelve
  una lista con el resultado.
-}
myMap :: (a -> b) -> [a] -> [b]
myMap f a = error "todo"

{-
  Implementa squares usando myMap
-}
squares2 :: Num a => [a] -> [a]
squares2 l = error "todo"

{-
  Implementa stringize usando myMap
-}

stringize2 :: Show a => [a] -> [String]
stringize2 l = error "todo"


-- FILTER

{-
  Implementa una función que devuelve True si un número dado es par, en caso contrario, False
-}
myEven :: Integral a => a -> Bool
myEven x = error "todo"


{-
  Implementa una función que devuelve True si un número dado es mayor que 100, en otro caso, False
-}
myBig :: (Num a, Ord a) => a -> Bool
myBig x = error "todo"

{-
  Implementa una función que dada una lista de números, devuelve una lista con solo los pares.
-}
myEvens :: Integral a => [a] -> [a]
myEvens l = error "todo"

{-
  Implementa una función que dada una lista de números, devuelva una lista con solo los
  números mayores que 100.
-}
myBigs :: (Num a, Ord a) => [a] -> [a]
myBigs l = error "todo"

{-
  myFilter es una función que recibe otra función booleana y una lista.
  Esta función aplica la función booleana a cada elemento de la lista,
  devuelve una lista con solo los elementos que evaluan a True en la función
  booleana.
-}
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f l = error "todo"

{-
  Implementa la función myEvens usando myFilter
-}
myEvens2 :: Integral a => [a] -> [a]
myEvens2 l = error "todo"



-- FOLD

{-
  Implementa una función que dada una lista, devuelva la longitud de la lista.
-}
myLength :: [a] -> Int 
myLength l = error "todo"


{-
  Implementa una función que, dada una lista de números, devuelva la suma de ellos.
-}
mySum :: Num a => [a] -> a
mySum l = error "todo"


{-
  Implementa una función que dada una lista de números, devuelva el mayor número de la lista.
-}
myMaximum :: (Num a, Ord a) => [a] -> a
myMaximum l = error "todo"

{-
  myFold:
  myFold es una función que recibe una función, un valor inicial y una lista.
  Dada una función f, myFold aplica esta función f al valor inicial y al primer elemento de la lista.
  Después, el resultado de esta operación se toma como nuevo valor inicial, y se vuelve a aplicar
  myFold al resto de la lista.
  
  Este valor que vamos calculando recibe el nombre de acumulador (acc).

-} 
myFold :: Foldable t => (b -> a -> b) -> b -> t a -> b
myFold f acc l = error "todo"

{-
  myFoldh:
  myFoldh funciona de forma similar a myFold, pero usa la cabeza de la lista dada como valor inicial.
  
  Implementa la función myFoldh.
  
  Conseto: usa la función myFold
-}
myFoldh :: Foldable t => (b -> a -> b) -> t a -> b
myFoldh f l = error "todo"
             
{-
  Implementa myLenght usando myFold
-}
myLength2 :: [a] -> Int
myLength2 l = error "todo"

{-
  Implementa la función mySum con myFold
-}
mySum2 :: Num a => [a]  -> a
mySum2 l = error "todo"

mySum2h :: Num a => [a] -> a
mySum2h l = error "todo"

{-
  Implementa la función myMaximum con myFold
-}
myMaximum2 :: (Num a, Ord a) => [a] -> a
myMaximum2 l = error "todo"

myMaximum2h :: (Num a, Ord a) => [a] -> a
myMaximum2h = error "todo"


-- MAYBE
{-
  Maybe:
  El tipo Maybe encapsula valores opcionales. Un valor de tipo Maybe es o bien un valor represetado
  como Just a, o no es, representado como Nothing.
  
  La idea es reimplementar las funciones de arriba usando Maybe para que en el caso en los que
  lanzaban excepción, ahora devuelvan un Nothing.
-}

{-
  Implementa myHead para que devuelva Just a, o Nothing
-}
mHead :: [a] -> Maybe a
mHead l = error "todo"

mTail :: [a] -> Maybe [a]
mTail l = error "todo"

mInit :: [a] -> Maybe [a]
mInit l = error "todo"

mLast :: [a] -> Maybe a
mLast l = error "todo"

