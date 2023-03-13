{-
 Tutorial baseado no Haskell Tutorial
 link: http://www.youtube.com/watch?v=02_H3LjqMr8

 Para compilar no ghci:
 :l hello_world
-}

import Data.List
import System.IO

{- ############# DATA TYPES ############## -}

-- Int -2^63 2^63
-- Integer - Pode ser to tamanho da sua memória
-- Float e Double
-- Bool True e False
-- Char ''
-- Tuple

intMaximo = maxBound :: Int
intMinimo = minBound :: Int
meuFloat = 3.99999999999 + 0.000000000005

{- ############# FUNCOES MATEMÁTICAS ############## -}

somaDeTodos = sum [1..1000]

soma = 5 + 5
subt = 5 - 5
mult = 5 * 5 :: Int
divs = 5 / 5

mods1 = mod 5 4 --funcao mod prefix
mods2 = 5 `mod` 4 --backstick mod

raiz = sqrt (fromIntegral mult)
numero_pi = pi
ePower = exp (fromIntegral mult)
logaritmo = log (fromIntegral mult)

truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

logicoE = True && False
logicoOu = True || False
logicoNot = not(True)

{- ############# LISTAS ############## -}

lista1 = [1, 2, 3, 5, 7, 11]
lista2 = lista1 ++ [13, 17, 19]
lista3 = 2 : 7 : 21 : 66 : [] -- [2, 7, 21, 66]
lista4 = lista3 : lista2 : [] -- Matriz
lista5 = 0 : lista2 -- Adiciona 0 no início
lista6 = [1..10] -- [1 até 10]
lista7 = [2,4..20] -- [2, 4, 6, 8, 10 ... 20]
lista8 = ['A', 'C' .. 'Z'] -- [A, C, E ... Y]
lista9 = take 10 (repeat 2) -- Um array de 10 posições com valor 2
lista10 = take 10 (cycle [1, 2, 3, 4, 5]) -- [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
lista13 = takeWhile (<=20) [2, 4..]

tamanhoLista4 = length lista4
reversoLista5 = reverse lista5
estaVazio = null lista5

primeiroElementoLista5 = head lista5
segundoElementoLista5 = lista5 !! 1
quintoElementoLista5 = lista5 !! 5
ultimoElementoLista5 = last lista5
restoLista5 = init lista5

primeirosTresLista5 = take 3 lista5
removeTresLista5 = drop 3 lista5

existe7NaLista = 7 `elem` lista5
maximoLista5 = maximum lista5
minimoLista5 = minimum lista5

somaLista6 = sum lista6
produtoLista6 = product lista6
produto2 = foldl (*) 1 lista6

somaValoresLista = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8]
maioresQue10 = filter (>10) lista7

{- ############# LAMBDA ############## -}

lista11 = [x * 2 | x <- lista7, x * 2 <= 30]
lista12 = [x | x <- [1..500], mod x 13 == 0, mod x 9 == 0]
lista14 = [2^x | x <- [1..10]]

lista15 = [[x * y | y <- [1..10]] | x <- [2, 4..20]]

{- ############# TUPLAS ############## -}

tupla1 = ("David Tigre", 25)
tupla2 = zip ["David", "Cleide", "Salomão"] [25, 56, 56]

firstTupla1 = fst tupla1
secondTupla1 = snd tupla1

{- ############# FUNCOES ############## -}

-- Executado primeiro quando compilado
main = do
    putStrLn "Qual o seu nome?"
    nome <- getLine
    putStrLn ("Ola " ++ nome)

obterTriplo :: Int -> Int -- Não é obrigatório
obterTriplo x = x * 3
-- por linha de comando -> let obterTriplo numero = numero * 3

somaDoisNumeros :: Int -> Int -> Int
somaDoisNumeros x y = x + y

somaTuplas :: (Int, Int) -> (Int, Int) -> (Int, Int)
somaTuplas (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

suaIdade :: Int -> String
suaIdade 16 = "Pode Votar"
suaIdade 18 = "Pode Dirigir"
suaIdade 21 = "É um adulto"
suaIdade _ = "Nada de Especial"

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

fatorial2 n = product [1..n]

{- ############# GUARDS ############## -}

ehPar :: Int -> String
ehPar numero
    | mod numero 2 == 0 = "Eh Par"
    | otherwise = "Eh Impar"

ehImpar numero = mod numero 2 /= 0

qualSerie :: Int -> String
qualSerie idade
    | (idade >= 5) && (idade <= 6) = "Jardim de Infancia"
    | (idade > 6) && (idade <= 10) = "Fundamental I"
    | (idade > 10) && (idade <= 14) = "Fundamental II"
    | (idade > 14) && (idade <= 18) = "Ensino Medio"
    | otherwise = "Universidade"

{- ############# WHERE ############## -}

media :: Double -> Double -> String
media hits atBats
    | avg <= 0.200 = "Pessimo"
    | avg <= 0.250 = "Medio"
    | avg <= 0.280 = "Bom"
    | otherwise = "Excelente"
    where avg = hits / atBats

obterLista :: [Int] -> String
obterLista [] = "Lista Vazia"
obterLista (x:[]) = "Lista começa com " ++ show x
obterLista (x:y:[]) = "Segundo elemento eh " ++ show y ++ " e primeiro eh " ++ show x
obterLista (x:xs) = "Lista comeca com " ++ show x ++ " e o resto eh " ++ show xs

primeiraLetra :: String -> String
primeiraLetra [] = "String Vazia"
primeiraLetra all@(x:xs) = "A primeira letra de " ++ all ++ " eh " ++ [x]

{- ############# HOF ############## -}

funcaoA :: Int -> Int
funcaoA num = num * 2

listaFuncaoA = map funcaoA [1..10]

funcaoB :: [Int] -> [Int]
funcaoB [] = []
funcaoB (primeiro:resto) = funcaoA primeiro : funcaoB resto

saoIguais :: [Char] -> [Char] -> Bool
saoIguais [] [] = True
saoIguais (x:xs) (y:ys) = x == y && saoIguais xs ys
saoIguais _ _ = False

gerarLista :: (Int -> Int) -> [Int] -> [Int]
gerarLista funcao lista = map funcao lista

gerarFuncao :: Int -> (Int -> Int)
gerarFuncao x y = x + y

add3 = gerarFuncao 3

