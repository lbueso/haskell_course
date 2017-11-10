module Main where

import Test.Hspec
import Test.QuickCheck
import Test.QuickCheck.Modifiers (NonEmptyList)
import Lib

prop_f_list f g xs = (f xs) == (g xs)

prop_f_list_n f g (NonEmpty xs) = (f xs) == (g xs)

prop_f_list_list f g xs ys = (f xs ys) == (g xs ys)

prop_f_list_elem f g xs x = (f xs x) == (g xs x)

type List_to_e_n = ([Int] -> Int) -> ([Int] -> Int) -> NonEmptyList Int -> Bool
type List_to_e = ([Int] -> Int) -> ([Int] -> Int) -> [Int] -> Bool
type List_to_list_i = ([Int] -> [Int]) -> ([Int] -> [Int]) -> [Int] -> Bool
type List_to_list_e = ([Int] -> Int) -> ([Int] -> Int) -> [Int] -> Bool
type List_to_list_s = ([Int] -> [String]) -> ([Int] -> [String]) -> [Int] -> Bool
type List_append = ([Int] -> Int -> [Int]) -> ([Int] -> Int -> [Int]) -> [Int] -> Int -> Bool
type List_concat = ([Int] -> [Int] -> [Int]) -> ([Int] -> [Int] -> [Int]) -> [Int] -> [Int] -> Bool

main :: IO ()
main = hspec $ do
  describe "Ejercicios de Funciones de orden superior sobre listas" $ do
    it "pruebas de map..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.map (+1)) (Lib.map (+1))
    it "pruebas de filter..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.filter even) (Lib.filter even)
    it "pruebas de foldr..." $ do
      property $ (prop_f_list :: List_to_list_e) (Prelude.foldr (+) 0) (Lib.foldr (+) 0)
    it "pruebas de map'..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.map (+1)) (Lib.map' (+1))
    it "pruebas de filter'..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.filter even) (Lib.filter' even)
    it "pruebas de squares..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.map (^2)) Lib.squares
    it "pruebas de stringize" $ do
      property $ (prop_f_list :: List_to_list_s) (Prelude.map show) Lib.stringize
    it "pruebas de evens..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.filter Prelude.even) Lib.evens
    it "pruebas de bigs..." $ do
      property $ (prop_f_list :: List_to_list_i) (Prelude.filter (> 100)) Lib.bigs
    it "pruebas de length..." $ do
      property $ (prop_f_list :: List_to_e) Prelude.length Lib.length
    it "pruebas de sum..." $ do
      property $ (prop_f_list :: List_to_e) Prelude.sum Lib.sum
    it "pruebas de maximum..." $ do
      property $ (prop_f_list_n :: List_to_e_n) Prelude.maximum Lib.maximum
