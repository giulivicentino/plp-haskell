
{-EJERCICIO 2-}
losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales x y z w
    | ((x == y) && (y == z) && (z == w)) = True
    | otherwise = False
allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

{-EJERCICIO 3 (arreglar)
allEqual4 :: Int -> Int -> Int -> Int -> Bool
allEqual4 n m p q = (n == m) && (m == p) && (p==q)

losCuatroIgualesE :: Int -> Int -> Int -> Int -> Bool
losCuatroIgualesE x y z w
    | (allEqual4 x y z w == true) = true
    | otherwise = False
-}

{-EJERCICIO 4-}
cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales x y z
    | (x == y) && (y == z) = 3
    | (x == y) || (y == z) || (x == z) = 2
    | otherwise = 0

cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos x y
    | (x == y) = 2
    | otherwise = 0

{-EJERCICIO 5a-}
fib :: Int -> Int
fib n
    |(n==0) = 0 --casos base
    |(n==1) =1 
    | (n > 1) =  fib (n-1) + fib (n-2) --lamado recursivo
    | otherwise = 0

{-EJERCICIO 5b-}
fact :: Int -> Int
fact n
    | (n==0|| n==1) = 1
    | (n>1) = n * fact (n-1)

{-EJERCICIO 5c-}
sucesion :: Int -> Int -> Float
sucesion x n = (sumatoria (fromIntegral n) n )/ (fromIntegral(fact x) ) -- float / float

sumatoria :: Float -> Int -> Float
sumatoria i n
    |(i==0)=0
    |otherwise = i ^ n + sumatoria (i-1) n -- float  ^  int