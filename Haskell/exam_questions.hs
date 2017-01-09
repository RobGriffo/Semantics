import Data.List
import System.IO

---------------------------------------
-----------------2016------------------
---------------------------------------

----------------JANUARY----------------

revCount :: [a] -> [Int] -> [a]
revCount [] _ = []
revCount _ [] = []
revCount (x:xs) (y:ys) = revCount xs ys ++ replicate y x


----------------AUGUST----------------

tr :: [[a]] -> [[a]]
tr ([]:_) = []
tr a = (map head a) :  tr (map tail a)


---------------------------------------
-----------------2015------------------
---------------------------------------

----------------JANUARY----------------

afterFilter :: (a -> Bool) -> [a] -> [a]
afterFilter _ [] = []
afterFilter _ [_] = []
afterFilter f (x:y:xs)
  | f x = y : afterFilter f (y:xs)
  | otherwise = afterFilter f (y:xs)


----------------AUGUST----------------

revCount' :: [a] -> [Int] -> [a]
revCount' [] _ = []
revCount' _ [] = []
revCount' (x:xs) (y:ys) = (revCount' xs ys ++ replicate y x)


---------------------------------------
-----------------2014------------------
---------------------------------------

----------------JANUARY----------------

mapEveryOther :: (a -> a) -> [a] -> [a]
mapEveryOther _ [] = []
mapEveryOther f [x] = [f x]
mapEveryOther f (x:y:xs) = f x : y : mapEveryOther f xs


----------------AUGUST----------------

sorting' :: (a -> a -> Bool) -> [a] -> [a]
sorting' _ [] = []
sorting' p (n:ns) =
    let left = sorting' p (filter (p n) ns)
        right = sorting' p (filter (not . p n ) ns)
    in left ++ [n] ++ right 
    