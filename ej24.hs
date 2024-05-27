{-Definir en Haskell una funcion tal que, dado un numero entero, genere la siguiente salida repitiendo
la cantidad de dıgitos con una lınea para cada dıgito. Ejemplo : para el numero 1534 , la salida
debe ser como:
1
55555
333
4444 
-}
{-
repeticion :: Int -> String
repeticion num 
    |(num == 0) = " "
    |(num >0) = generaCadena (numerin, numerin) ++ repeticion(num `div` 10)
        where numerin = num `mod` (10^((longitud num) -1) ) -- obtiene el primer numero

longitud :: Int -> Int
longitud n = length (show(n))



 -- para imprimir una cadena de 5, 5 veces, el primer parametro es el numero y el segundo el contador
generaCadena :: Int -> Int -> String
 generaCadena num cont
    |(cont == 0) = " "
    |(cont > 0 ) = num + generarCadena num (cont-1)

--CRIS!!
generar :: Int -> String
generar a
    | a == 0 = ""
    | otherwise = 
        let num1 = a `mod` 10  -- obtengo el digito (entero)
            num2 = a `div` 10  -- obtengo el resto de dgitos (entero)
            st = canNumeros num1 num1
        in generar num2 ++ st ++ "\n" 

canNumeros :: Int -> Int -> String
canNumeros a b
    | b == 0 = ""
    | otherwise = show a ++ canNumeros a (b-1)

main :: IO ()
main = do
    let a = 1534
        resultado = generar a
    putStrLn resultado
-}
--CATEDRA
linea :: Int -> Int -> String
linea n m
    | (m==0) = ""
    | (m==1) = show n
    | otherwise = show n ++ linea n (m-1)

ej24 :: Int -> String
ej24 n
    | (n < 10) = linea n n 
    | (n > 10) = ej24 (n `div` 10) ++ "\n" ++ linea m m
    | otherwise = ""
  where 
    m = (n `mod` 10)

main :: IO ()
main = do
    putStrLn "Ingrese el digito"
    m <- readLn
    putStrLn (ej24 m)