cuadrado :: Int -> Int
cuadrado x = x * x 

suma :: Int -> Int
suma x = x + x

losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales a b c d = ((a == b) && (b == c)) && (c == d)