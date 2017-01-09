import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer -> unbounded i.e. as big as we like
-- Double -> precision up to 11 points
-- Bool True False
-- Char ''
-- Tuple 

alwaysFive :: Int
alwaysFive = 5


sumOfNums = sum[1..1000]

modEx = mod 5 4 --prefix operator [before]
modEx2 = 5 `mod` 4 --infix

negNumEx = 5 + (-4)

num9 = 9 :: Int
sqrtOf9= sqrt(fromIntegral num9) --Integer -> Floating: fromIntegral


trueAndFalse = True && False
trueOfFalse = True || False
notTrue = not(True)


-- Lists are singley linked
-- Can only add to the front



primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13,17,19,23,29]


favNums = 2 : 7 : 21 : 66 :[]

multList = [[3,5,7],[11,13,17]]

morePrime2 = 2 : morePrime
lenPrime = length morePrime2
revPrime = reverse morePrime2
isListEmpty  = null morePrime2
secondPrime = morePrime2 !! 1

firstPrime = head morePrime2
lastPrime = last morePrime2
primeInit = init morePrime2
first3Primes = take 3 morePrime2

removedPrimes = drop 3 morePrime2

is7InList = 7 `elem` morePrime2

maxPrime = maximum morePrime2
minPrime = minimum morePrime2

newList = [2,3,5]
prod = product newList

zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['A','C'..'Z']
infinPow10 = [10,20..]
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle[1,2,3,4,5])
listTimes2 = [x * 3 | x <- [1..10], x * 3 <= 50]

divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort [9, 1, 8, 3, 4, 7, 6]
sumOfLists = zipWith (+) [1,2,3,4,5][6,7,8,9,10]

listBiggerThan5 = filter (>5) morePrime2
evensUpTo20 = takeWhile (<= 20)[2,4..]
multOfList = foldr (*) 1 [2,3,4,5]

pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

----------------------Tuples----------------------
randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]

namesNAddress = zip names addresses







