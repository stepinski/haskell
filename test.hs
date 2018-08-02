double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

n = a `div` length xs
 where
    a = 10
    xs = [1,2,3,4,5]


--safetail [] = []
-- safetail (_ : xs) = xs

--safetail xs = if null xs then [] else tail xs

--safetail xs
--    | null xs = []
--    | otherwise = tail xs

--safetail [] = []
--safetail xs = tail xs 
-- safetail [] = []

-- safetail [x] = [x]
-- safetail (_ : xs) = xs

safetail 
 = \ xs ->
    case xs of
        [] -> []
        (_:xs) -> xs


funct :: Int -> [a] -> [a]
funct x xs = take (x+1) xs ++ drop x xs

factors  :: Int -> [Int]
factors n =
    [x | x <- [1 .. n], n `mod` x ==0 ]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [x|x <-[2..n],prime x]

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

positions :: Eq a => a -> [a] -> [Int]
positions x xs = 
    [i | (x',i) <- zip xs [0..n],x==x']
    where n = length xs -1