module Main where

import Test.Hspec
import Test.QuickCheck
import Lib

prop_f_list f g xs = (f xs) == (g xs)

prop_f_list_list f g xs ys = (f xs ys) == (g xs ys)

prop_f_list_elem f g xs x = (f xs x) == (g xs x)

type List_to_e = ([Int] -> Int) -> ([Int] -> Int) -> [Int] -> Bool
type List_to_list_i = ([Int] -> [Int]) -> ([Int] -> [Int]) -> [Int] -> Bool
type List_to_list_s = ([Int] -> [String]) -> ([Int] -> [String]) -> [Int] -> Bool
type List_append = ([Int] -> Int -> [Int]) -> ([Int] -> Int -> [Int]) -> [Int] -> Int -> Bool
type List_concat = ([Int] -> [Int] -> [Int]) -> ([Int] -> [Int] -> [Int]) -> [Int] -> [Int] -> Bool

main :: IO ()
main = hspec $ do
  describe "Ejercicios de introduccion" $ do
    it "pruebas de squares..." $ do
      property $ (prop_f_list :: List_to_list_i) (map (^2)) Lib.squares
    it "pruebas de stringize" $ do
      property $ (prop_f_list :: List_to_list_s) (map show) Lib.stringize
    it "pruebas de even..." $ do
      property $ ((\x -> Prelude.even x == Lib.even x) :: Int -> Bool)
    it "pruebas de big..." $ do
      property $ ((\x -> (x > 100) == Lib.big x) :: Int -> Bool)
    it "pruebas de evens..." $ do
      property $ (prop_f_list :: List_to_list_i) (filter Prelude.even) Lib.evens
    it "pruebas de bigs..." $ do
      property $ (prop_f_list :: List_to_list_i) (filter (> 100)) Lib.bigs
    it "pruebas de length..." $ do
      property $ (prop_f_list :: List_to_e) Prelude.length Lib.length
    it "pruebas de sum..." $ do
      property $ (prop_f_list :: List_to_e) Prelude.sum Lib.sum
    it "pruebas de maximum..." $ do
      property $ (prop_f_list :: List_to_e) Prelude.maximum Lib.maximum

main :: IO ()
main = putStrLn "Test suite not yet implemented"
