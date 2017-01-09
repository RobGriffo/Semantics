import Data.List
import System.IO

addMe :: Int -> Int -> Int

--functionName param1 param2 = operations (returned value)

addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)

addTuples (x, y) (x2, y2) = (x+x2, y+y2)

whatAge :: Int -> String

whatAge 16 = "You Can Drive"
whatAge 18 = "You Can Vote"
whatAge 21 = "You're An Adult"
whatAge _ = "Nothing Important"

--Recursion

factorial:: Int -> Int

factorial 0 = 1
factorial n = n * factorial(n-1)

prodFact n = product [1..n]

isOdd :: Int -> Bool

isOdd n 
	| n `mod` 2 == 0 = False 
	| otherwise = True
	
isEven n = n `mod` 2 ==0

whatGrade :: Int -> String

whatGrade age
	|(age>=5) && (age<=6) = "Kindergarten"
	|(age>6) && (age<=10) = "Elementary School"
	|(age>10) && (age<=14) = "Middle School"
	|(age>15) && (age<=18) = "High School"
	|otherwise = "Go to College"
	
batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
	|avg <= 0.200 = "Terrible Batting Average"
	|avg <= 0.250 = "Average Player"
	|avg <= 0.280 = "You're doing pretty good"
	|otherwise = "You're a Superstar"
	where avg = hits/atBats
	
getListItems :: [Int] -> String

getListItems  [] = "Your List is Empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest is " ++ show xs
 
 
getFirstItem :: String -> String
 
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The First letter in " ++ all ++ " is " ++ [x]
 
 
 
times4 :: Int -> Int

times4 x = x * 4

listTimes4 = map times4 [1,2,3,4,5] 
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = x*4 : multBy4 xs


areStringsEq :: [Char] -> [Char] -> Bool

areStringsEq [] [] = True
areStringsEq (x: xs)(y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False


doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3
fourPlus3 = adds3 4

threePlusList = map adds3 [1,2,3,4,5]

--lambda function with no name

dbl1to10 = map (\x -> x *2) [1..10]

-- == /= < > <= >=

doubleEvenNumber y =
	if(y `mod` 2 /=0)
		then y
		else y * 2

getClass :: Int -> String
getClass n = case n of
	5 -> "Kindergarten"
	6 -> "Middleschool"
	_ -> "Everything else"
	
-- Modules contain functions

data BaseballPlayer = 	 Pitcher 
						|Catcher
						|Infielder
						|Outfield
						deriving Show


barryBonds :: BaseballPlayer -> Bool

barryBonds Outfield = True

barryInOf = print (barryBonds Outfield)


-- Customs Types -> like struct


data Customer = Customer String String Double
	deriving Show
	
tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50
 
getBalance :: Customer -> Double

getBalance ((Customer _ _ b)) = b

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String

shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beats Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
	deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs $ x2-x)*(abs $ y2-y)

sumValue = putStrLn (show(1+2))
sumValue2 = putStrLn .show $ 1 + 2

areaOfCircle = area(Circle 50 60 20)
areaOfRect = area $ Rectangle 10 10 100 100

-- Type Classes -> Num Eq Or Show

data Employee = Employee {	name::String,
							position:: String,
							idNum :: Int
						 	}deriving (Eq, Show)

samSmith= Employee{name="Sam Smith", position="Manager", idNum=1}
pamMarx= Employee{name="Pam Marx", position="Sales", idNum=2}

isSamPam = samSmith == pamMarx
samSmithData = show samSmith


data ShirtSize = S | M | L

instance Eq ShirtSize where
	S == S = True
	M == M = True
	L == L = True
	_ == _ = False

instance Show ShirtSize where
	show S = "Small"
	show M = "Medium"
	show L = "Large"

smallAvail = S `elem` [S,M,L]
theSize = show S 


class MyEq a where
	areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
	areEqual S S = True
	areEqual M M = True
	areEqual L L = True
	areEqual _ _ = False

newSize = areEqual M M





sayHello = do
	putStrLn "What's your name?"
	name <- getLine
	putStrLn $ "Hello " ++ name


writeToFile = do
	theFile <- openFile "test.txt" WriteMode
	hPutStrLn theFile ("Random line of text")
	hClose theFile

readFromFile = do
	theFile2 <- openFile "test.txt" ReadMode
	contents <- hGetContents theFile2
	putStr contents
	hClose theFile2


fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]