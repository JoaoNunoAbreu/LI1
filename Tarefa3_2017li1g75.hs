module Tarefa3_2017li1g75 where

import LI11718


testesT3 :: [(Tabuleiro,Tempo,Carro)]
testesT3 = [a1,a2,a3]

a1 :: (Tabuleiro,Tempo,Carro)
a1 = (([[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]),2,(Carro {posicao = (2.5,1.5), direcao = 45, velocidade = (1,0)}))

a2 :: (Tabuleiro,Tempo,Carro)
a2 = (([[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]),2,(Carro {posicao = (2.5,1.5), direcao = 45, velocidade = (1,0)}))

a3 :: (Tabuleiro,Tempo,Carro)
a3 = (([[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]),2, (Carro {posicao = (2.3,1.3), direcao = 45, velocidade = (1,0)}))


{- | Função 'movimenta', objetivo da Tarefa 3.
  
    == Exemplos de utilização:

    >>> movimenta [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 3 Carro {posicao=(1.5,1.5),direcao=45,velocidade=(2,0)}
    Nothing
-}

movimenta :: Tabuleiro -> Tempo -> Carro -> Maybe Carro
movimenta m t c | testaCairLava m c 0 t == True = Nothing
                | otherwise = Just (Carro {posicao = (qualPonto c t), direcao = 45, velocidade = (1,0)})


{- | Função 'qualPonto', define qual o ponto onde vai estar o carro depois de um periodo de tempo.
  
    == Exemplos de utilização:

    >>> qualPonto Carro {posicao=(1.5,1.5),direcao=45,velocidade=(2,0)} 3
    (7.5,1.5)
-}

qualPonto :: Carro -> Tempo -> Ponto
qualPonto (Carro (m,n) dir (vx,vy)) t = (m+vx * t,n+vy * t)

-- | Transforma a função debaixo toda numa só lista

posDasLavas :: [[Posicao]] -> [Posicao]
posDasLavas [] = []
posDasLavas (h:t) = h ++ posDasLavas t

{- | Função 'posDasLavasTab', define a lista das posições de cada peça de lava em cada linha.
  
    == Exemplos de utilização:

    >>> posDasLavasTab [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (0,0)
    [[(0,0),(1,0),(2,0),(3,0),(4,0),(5,0),(6,0)],[(0,1),(4,1),(5,1),(6,1)],[(0,2),(2,2),(4,2),(5,2),(6,2)],[(0,3),(6,3)],[(0,4),(1,4),(2,4),(4,4),(6,4)],[(0,5),(1,5),(2,5),(6,5)],[(0,6),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6)]]
-}

posDasLavasTab :: Tabuleiro -> Posicao -> [[Posicao]] 
posDasLavasTab [] _  = []
posDasLavasTab (((Peca x y):xs):t) (m,n) = posDasLavasLinha ((Peca x y):xs) (m,n):(posDasLavasTab t (m,n+1))

{- | Função 'posDasLavasLinha', guarda as posições das peças de lava numa linha.
  
    == Exemplos de utilização:

    >>> posDasLavasLinha [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0] (0,0)
    [(0,0),(4,0),(5,0),(6,0)]
-}

posDasLavasLinha :: [Peca] -> Posicao -> [Posicao]
posDasLavasLinha [] (m,n) = []
posDasLavasLinha ((Peca x y):t) (m,n) = if x == Lava
    then (m,n):posDasLavasLinha t (m+1,n)
    else posDasLavasLinha t (m+1,n)

---------------------------------------------------------------------------------------------------

-- | Transforma a função debaixo toda numa só lista

posDasCurvas :: [[Posicao]] -> [Posicao]
posDasCurvas [] = []
posDasCurvas (h:t) = h ++ posDasCurvas t 

{- | Função 'posDasCurvasTab', define a lista das posições de cada peça que seja curva em cada linha. (As listas vaziam significam que nessa linha não há pecas curvas)
  
    == Exemplos de utilização:

    >>> posDasCurvasTab [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (0,0)
    [[],[(1,1),(3,1)],[],[(1,3),(3,3)],[]]
-}

posDasCurvasTab :: Tabuleiro -> Posicao -> [[Posicao]] 
posDasCurvasTab [] _  = []
posDasCurvasTab (((Peca x y):xs):t) (m,n) = posDasCurvasLinha ((Peca x y):xs) (m,n):(posDasCurvasTab t (m,n+1))

{- | Função 'posDasCurvasLinha', guarda as posições das peças curvas numa linha.
  
    == Exemplos de utilização:

    >>> posDasCurvasLinha [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0] (0,0)
    [(1,0),(3,0)]
-}

posDasCurvasLinha :: [Peca] -> Posicao -> [Posicao]
posDasCurvasLinha [] (m,n) = []
posDasCurvasLinha ((Peca x y):t) (m,n) = if x == (Curva Norte) || x == (Curva Sul) || x == (Curva Este) || x == (Curva Oeste)
    then (m,n):posDasCurvasLinha t (m+1,n)
    else posDasCurvasLinha t (m+1,n)

{- | Função 'testaCairLava', testa se o carro cai na lava num periodo de tempo.
  
    == Exemplos de utilização:

    >>> testaCairLava [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] Carro {posicao=(1.5,1.5),direcao=45,velocidade=(2,0)} 1 3
    True
-}

lavaCurvas :: Peca -> Ponto -> Bool
lavaCurvas (Peca (Curva Este) l) (x,y)  = x   < y
lavaCurvas (Peca (Curva Oeste) l) (x,y) = x   > y
lavaCurvas (Peca (Curva Norte) l) (x,y) = 1-x < y
lavaCurvas (Peca (Curva Sul) l) (x,y)   = 1-x > y
lavaCurvas _ _ = False
 
---------------------------------------------------------------------------------------------------

testaCairLava :: Tabuleiro -> Carro -> Tempo -> Tempo -> Bool 
testaCairLava tab (Carro x y z) t t1 = if elem (dizerEnquadramento (qualPonto (Carro x y z) t)) (enquadramento (posDasLavas (posDasLavasTab tab (0,0))))
    then True 
    else 
        if t /= t1
            then
                if whatPecaPares tab (dizerEnquadramento (qualPonto (Carro x y z) t)) == Peca Lava 0
                    then True
                    else
                         if not (lavaCurvas (whatPeca tab (qualPonto (Carro x y z) t1)) (ficarComParteDecimal (qualPonto (Carro x y z) t1)))
                            then True
                            else testaCairLava tab (Carro x y z) (t+(0.5)) t1
            else (elem (dizerEnquadramento (qualPonto (Carro x y z) t)) (enquadramento (posDasLavas (posDasLavasTab tab (0,0)))))


{- | Função 'dizerEnquadramento', define quais as posições que fazem um quadrado à volta do ponto.
  
    == Exemplos de utilização:

    >>> dizerEnquadramento (1.5,1.5)
    ((1,1),(2,2))
-}

ficarComParteDecimal :: Ponto -> Ponto
ficarComParteDecimal (x,y) = (x - (fromIntegral (floor x)),y - (fromIntegral (floor y)))

---------------------------------------------------------------------------------------------------

dizerEnquadramento :: Ponto -> (Posicao,Posicao)
dizerEnquadramento (m,n) = ((floor m,floor n),(ceiling m,ceiling n))

{- | Função 'enquadramento', faz o mesmo que a função 'dizerEnquadramento' só que com posições, em vez de pontos, e listas.
  
    == Exemplos de utilização:

    >>> enquadramento [(0,0),(1,0),(2,0),(3,0)]
    [((0,0),(1,1)),((1,0),(2,1)),((2,0),(3,1)),((3,0),(4,1))]
-}

enquadramento :: [Posicao] -> [(Posicao,Posicao)]
enquadramento [] = []
enquadramento ((m,n):t) = ((m,n),(m+1,n+1)) : enquadramento t

{- | Função 'whatPeca', define a peça num determinado ponto do tabuleiro.
  
    == Exemplos de utilização:

    >>> whatPeca [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (1.5,1.5)
    Peca (Curva Norte) 0
    
-}

whatPeca :: Tabuleiro -> Ponto -> Peca
whatPeca tab (m,n) = ((!!) ((!!) tab (floor n)) (floor m))

{- | Função 'whatPecaPares', define uma peça do tabuleiro, sabendo o enquadramento (Apenas se usa o primeiro par pois o segundo seria o da peça imediatamente a sudeste).
  
    == Exemplos de utilização:

    >>> whatPecaPares [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] ((1,1),(2,2))
    Peca (Curva Norte) 0
-}

whatPecaPares :: Tabuleiro -> (Posicao,Posicao) -> Peca
whatPecaPares tab ((m,n),(m1,n1)) = ((!!) ((!!) tab n) m)
