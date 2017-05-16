module Lists where

{-
A list: A list (whose elements has type t) could be an empty
list [] or element with type t added to a head of a sequence
of t typed elements.
-}


{-
TESTING LISTS
-}
l1 = [1,2,3,4,5,6,7,8,9,0]

l2 = [9,1,2,8,3,4,7,6,5,0]

l3 = [90,91,102,81,3,104,1007,96,50,1000]

l4 = []

-- Auxiliary Functions

{-
Implement a function that, ginven a list, returns the first element.
If an empty list is given, returns []
-}
myHead :: [a] -> a
myHead l =

{-
Implement a function that, given a list, returns the whole list but the first elemt.
Ignore the empty list case
-}
myTail :: [a] -> [a]
myTail l =

{-
Implement a function that, given a list, returns the whole list but the last element.
Ignore the empty list case
-}
myInit :: [a] -> [a]
myInit =

{-
Implement a function that, given a list, returns the very last element.
If an empty list is given, returns []
-}
myLast :: [a] -> [a]
myLast l =

{-
implement a function that, given a list of t elements and a elemtn of type t,
retruns a new list whith the given list at the beginning and the element at the end
-}
myAppend :: [a] -> a -> [a]
myAppend l e =

{-
Implement a function that, given a list, returns the same list reversed.
TIP: Use myAppend function.
-}
myReverse :: [a] -> [a]
myReverse = 

{-
Implement a function that, given two lists, returns only one list which is the
Concatenation of the two given lists.
TIP: Use myAppend function
-}
myConcat :: [a] -> [a] -> [a]
myConcat l1 l2 =



-- MAP

{-
Implement a function that, given a number, calculates his square
-}
square :: Num a => a -> a
square n =

{-
Implement a function that, given a list of numbers, calculates the square of all its
elements and return them as a new list.
TIP: Use the square function
-}
squares :: Num a => [a] -> [a]
squares l =

{-
Implement a function that, given a list of numbers, returns a new list with the
numbers converted to strings.
TIP: Use show function
-}
stringize :: Show a => [a] -> [String]
stringize l =

{-
MyMap:
MyMap is a function that receives another function and a list.
What this function does is to apply the received function to each element of the
given list and returns a new list with the results
-}
myMap :: (a -> b) -> [a] -> [b]
myMap f a =

{-
Implement the squares function using myMap
-}
squares2 :: Num a => [a] -> [a]
squares2 l =

{-
Implement the stringize using myMap
-}
stringize2 :: Show a => [a] -> [String]
stringize2 l =



-- FILTER

{-
Implement a function that returns true if a given number is eve, otherwise returns false
-}
myEven :: Integral a => a -> Bool
myEven x =

{-
Implement a function that returns true if the given is greater than 100, otherwise returns
false
-}
myBig :: (Num a, Ord a) => a -> Bool
myBig x =

{-
Implement a function that, given a list of Numbers, returns a new list with only the
evens numbers
-}
myEvens :: Integral a => [a] -> [a]
myEvens l =

{-
Implement a function that, given a list of Numbers, returns a new ;ist with only the
numbers bigger than 100.
TIP: Use myBig function
-}
myBigs :: (Num a, Ord a) => [a] -> [a]
myBigs l =

{-
myFIlter:
myFilter is a function that receives another boolean function and a list.
What this function does is to apply the boolean function to each element of the
given list and returns a new list with only the elements thar satifies the
boolean function, e.i. that returns true in the boolean function.
-}
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f l =

{-
Implement the myEvens funtion using myFilter
-}
myEvens2 :: Integral a => [a] -> [a]
myEvens2 l =



-- FOLD

{-
Implement a function that, given a list, returns the length of the list
Ignore the Nil case.
-}
myLength :: [a] -> Int 
myLength l =

{-
Implement a funtion that, given a list of numbers, returns the summatory of all numbers.
-}
mySum :: Num a => [a] -> a
mySum l =

{-
Implement a function that, given a list of numbers, returns the maximum number
of the list.
Ignore the Nil case.
-}
myMaximum :: (Num a, Ord a) => [a] -> a
myMaximum l =


{-
myFold:
myFold is a functions that receives another functiona an initial value and a list.
This function is pretty difficult, suppose the given function is f, what this myFold
does is to apply the function f to each element and the initial value and the result is
"stored" as a new initial value, this is waht we call "the carry". In a more procedural
way:

carry = 0
for e in MyList
    carry = f(carry, e)

return carry
-}
myFold :: Foldable t => (b -> a -> b) -> b -> t a -> b
myFold f acc l =

{-
myFoldh:
myFoldh works similar as myFoldl but it uses the head of the MyList as initial value.
Ignore the Nil case.
TIP: Use myFold function
-}
myFoldh :: Foldable t => (b -> a -> b) -> t a -> b
myFoldh f l =

{-
Implement length using myFold
-}
myLength2 :: [a] -> Int
myLength2 l =

{-
Implement sum using myFold or myFoldh.
In case of using myFoldh, ignore the Nil case.
-}
mySum2 :: Num a => [a]  -> a
mySum2 l =

mySum2h :: Num a => [a] -> a
mySum2h l =

{-
Implement myMaximum using myFold or myFoldh.
In case of using myFoldh, ignore the Nil case.
-}
myMaximum2 :: (Num a, Ord a) => [a] -> a
myMaximum2 l =

myMaximum2h :: (Num a, Ord a) => [a] -> a
myMaximum2h =


-- MAYBE

{-
Maybe:
Maybe type encapsulates optional value. A value of type Maybe a either contains a value
of type a (represented as Just a), or it is empty (Represented as Nothing) -- Haskell.org definition

The idea is to implement the functions above using Maybe in such way the [] case do not raises an exception.
-}

{-
Implement myHead so it return Just a or Nothing
-}
mHead :: [a] -> Maybe a
mHead l =

{-
Implement myTail so it return Just list or Nothing
-}
mTail :: [a] -> Maybe [a]
mTail l =

{-
Implement myInit so it returns Just list or Nothin
-}
mInit :: [a] -> Maybe [a]
mInit l =

{-
Implement myLast so it returns Just a or Nothing
-}
mLast :: [a] -> Maybe a
mLast l =

