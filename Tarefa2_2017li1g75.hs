module Tarefa2_2017li1g75 where

import LI11718
import Tarefa1_2017li1g75

testesT2 :: [Tabuleiro]
testesT2 = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12]

-- | Não está rodeado de lava

t1 :: Tabuleiro
t1 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0]]

-- | Mapa válido

t2 :: Tabuleiro
t2 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Mapa válido

t3 :: Tabuleiro
t3 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Uma peca fora do caminho

t4 :: Tabuleiro
t4 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Mapa não fechado

t5 :: Tabuleiro
t5 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Mapa válido

t6 :: Tabuleiro
t6 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca (Rampa Este) 0,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Alturas incompativeis

t7 :: Tabuleiro
t7 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 1,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Tabuleiro não retangular

t8 :: Tabuleiro
t8 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 

-- | Uma lava com altura 0

t9 :: Tabuleiro
t9 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 1,Peca Lava 0,Peca Lava 0]]

-- | Mapa válido

t10 :: Tabuleiro
t10 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Mapa válido

t11 :: Tabuleiro
t11 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

-- | Mapa válido

t12 :: Tabuleiro
t12 = [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Este) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 1,Peca (Rampa Oeste) 1,Peca Recta 2,Peca (Rampa Oeste) 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 1,Peca (Curva Este) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 2,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 1,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 3,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 2,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 4,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 3,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 5,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Sul) 4,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Norte) 4,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 5,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 4,Peca Recta 4,Peca Recta 4,Peca Recta 4,Peca Recta 4,Peca Recta 4,Peca Recta 4,Peca Recta 4,Peca (Rampa Oeste) 4,Peca (Curva Sul) 5,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]

{- | Função 'valida', objetivo da Tarefa 2.
  
    == Exemplos de utilização:

    >>> valida (Mapa ((1,2),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    False
-}

valida :: Mapa -> Bool
valida m = if retangularMapa m
  then if (primeiraPeca m)
    then if (rodeadoLavaTesta m)
      then if (lavaMesmaAlturaTesta m)
          then if (orientacaoTesta m)
            then (umCaminho m) && (percurso m) && (alturasTesta m)
          else False
        else False
      else False
    else False
  else False 
  

{- | 1 - Função 'umCaminho', testa se existe apenas um percurso e se todas as peças fora desse percurso são do tipo lava.
  
    == Exemplos de utilização:

    >>> umCaminho (Mapa ((1,2),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    False
-}

umCaminho :: Mapa -> Bool 
umCaminho (Mapa ((m,n),o) t) = lengthParesTotal (mapaToPeca (Mapa ((m,n),o) t) (m,n) o) == lengthPecasNLava t

{- | Função 'lengthPecasNLavaMapa', calcula o número de pecas não lava num Tabuleiro de um mapa.
  
    == Exemplos de utilização:

    >>> lengthPecasNLavaMapa (Mapa ((1,2),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    15
-}

lengthPecasNLavaMapa :: Mapa -> Int 
lengthPecasNLavaMapa (Mapa ((m,n),o) t) = lengthPecasNLava t

{- | Função 'lengthPecasNLava', calcula o número de pecas não lava num Tabuleiro.
  
    == Exemplos de utilização:

    >>> lengthPecasNLava [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 3,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    15
-}

lengthPecasNLava :: Tabuleiro -> Int
lengthPecasNLava [] = 0
lengthPecasNLava ([]:t) = lengthPecasNLava t
lengthPecasNLava (((Peca x y):xs):t) = if x == Lava 
    then lengthPecasNLava (xs:t)
    else 1 + lengthPecasNLava (xs:t)

{- | Função 'lengthPares', calcula o número de pares numa lista.
  
    == Exemplos de utilização:

    >>> lengthPares [(Peca Lava 1,(1,2)),(Peca Recta 0,(3,3))]
    2
-}

lengthPares :: [(Peca,Posicao)] -> Int
lengthPares [] = 0
lengthPares (h:t) = 1 + lengthPares t

{- | Função 'lengthParesTotal', ao número de pares numa lista subtrai o número de interseções, calculado em 'contaIntersecao'.
  
    == Exemplos de utilização:

    >>> lengthParesTotal [(Peca Lava 1,(1,2)),(Peca Recta 0,(3,3)),(Peca Lava 1,(1,2))]
    2
-}

lengthParesTotal :: [(Peca,Posicao)] -> Int
lengthParesTotal [] = 0
lengthParesTotal (h:t) = lengthPares (h:t) - contaIntersecao (h:t)


{- | Função 'contaIntersecao', calcula o número de interseções.
  
    == Exemplos de utilização:

    >>> contaIntersecao [(Peca Lava 1,(1,2)),(Peca Recta 0,(3,3)),(Peca Lava 1,(1,2))]
    1
-}

contaIntersecao :: [(Peca,Posicao)] -> Int
contaIntersecao [] = 0
contaIntersecao (h:t) = if elem h t
  then 1 + contaIntersecao t
  else contaIntersecao t


---------------------------------------------------------------------------------------------------

{- | 2 - Função 'percurso', testa se o percurso corresponde a uma trajectória, tal que começando na peça de partida com​ a orientação inicial volta-se a chegar à peça de partida com a orientação ​inicial.
  
    == Exemplos de utilização:

    >>> percurso (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

percurso :: Mapa -> Bool
percurso (Mapa ((m,n),o) (((Peca x y):xs):t)) = testaPos && testaOris
    where
        testaPos = (m,n) == proxPos (fst (last (peca))) (snd (last (peca))) o
        testaOris = o    == proxOri (fst (last (peca))) o
        peca = mapaToPeca (Mapa ((m,n),o) (((Peca x y):xs):t)) (m,n) o


---------------------------------------------------------------------------------------------------

{- | 3 - Função 'orientacaoTesta', testa se a orientação inicial é compatível com a peça de partida.
  
    == Exemplos de utilização:

    >>> orientacaoTesta (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

orientacaoTesta :: Mapa -> Bool
orientacaoTesta (Mapa ((m,n),o) t) = (orientacao (((!!) ((!!) t n) m)) o)

{- | 3 - Função 'orientacao', auxiliar da função 'orientacaoTesta' que testa se a orientação inicial é compatível com a peça de partida.
  
    == Exemplos de utilização:

    >>> orientacao (Peca Lava 1) Norte
    False
-}

orientacao :: Peca -> Orientacao -> Bool
orientacao p o | pecaToPasso p o == Just Avanca = True
               | pecaToPasso p o == Just Sobe = True
               | pecaToPasso p o == Just Desce = True
               | pecaToPasso p o == Just CurvaDir = True
               | pecaToPasso p o == Just CurvaEsq = True
               | otherwise = False

{- | Função 'pecaToPasso', transforma uma peça num passo.
  
    == Exemplos de utilização:

    >>> pecaToPasso (Peca Lava 1) Norte
    Nothing
-}

pecaToPasso :: Peca -> Orientacao -> Maybe Passo
pecaToPasso (Peca Lava x) o = Nothing
pecaToPasso (Peca Recta x) o = Just Avanca
pecaToPasso (Peca (Rampa x)y) o | x == o = Just Sobe
                                | x == Norte && o == Sul = Just Desce
                                | x == Sul && o == Norte = Just Desce
                                | x == Oeste && o == Este = Just Desce
                                | x == Este && o == Oeste = Just Desce
                                | otherwise = Nothing
pecaToPasso (Peca (Curva x)y) o | x == o = Just CurvaDir
                                | x == Norte && o == Oeste = Just CurvaEsq
                                | x == Sul && o == Este = Just CurvaEsq
                                | x == Oeste && o == Sul = Just CurvaEsq
                                | x == Este && o == Norte = Just CurvaEsq
                                | otherwise = Nothing


---------------------------------------------------------------------------------------------------

{- | 4 - Função 'alturasTesta', testa se as peças do percurso estão ligadas com alturas compatíveis.
  
    == Exemplos de utilização:

    >>> alturasTesta (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

alturasTesta :: Mapa -> Bool
alturasTesta (Mapa ((m,n),o) t) = alturas lPecas lOris
    where
        lPecas = onlyPecas (mapaToPeca (Mapa ((m,n),o) t) (m,n) o)
        lOris = listaDeOris (onlyPecas (mapaToPeca (Mapa ((m,n),o) t) (m,n) o)) o 

{- | Função 'alturas', auxiliar da função 'alturasTesta' que testa se as peças do percurso estão ligadas com alturas compatíveis.
  
    == Exemplos de utilização:

    >>> alturas [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0] [Norte,Sul,Norte,Sul,Este,Sul,Norte]
    True
-}

alturas :: [Peca] -> [Orientacao] ->  Bool
alturas [Peca x y] [o] = True
alturas ((Peca (Rampa x)y):(Peca (Rampa a)b):t) (o:os) | x == a && x == o && y == (b-1) = alturas ((Peca (Rampa a)b):t) os                                         -- Sobe Sobe
                                                       | x == o && (oriContrarias a) == (head os) && (y+1) == b = alturas ((Peca (Rampa a)b):t) os                 -- Sobe Desce
                                                       | (oriContrarias x) == o && a == (head os) && (y-1) == b = alturas ((Peca (Rampa a)b):t) os                 -- Desce Sobe
                                                       | (oriContrarias x) == o && (oriContrarias a) == (head os) && (y-1) == b = alturas ((Peca (Rampa a)b):t) os -- Desce Desce
                                                       | otherwise = False
alturas ((Peca (Rampa x) y):(Peca a b):t) (o:os) | x == o && (y+1) == b = alturas ((Peca a b):t) os
                                                 | x == Norte && o == Sul   && y == b = alturas ((Peca a b):t) os
                                                 | x == Sul   && o == Norte && y == b = alturas ((Peca a b):t) os
                                                 | x == Oeste && o == Este  && y == b = alturas ((Peca a b):t) os
                                                 | x == Este  && o == Oeste && y == b = alturas ((Peca a b):t) os
                                                 | otherwise = False
alturas ((Peca x y):(Peca (Rampa a)b):t) (o:os) | a == (head os)     && y == b                   = alturas ((Peca (Rampa a) b):t) os
                                                | a == Norte && (head os) == Sul   && (y-1) == b = alturas ((Peca (Rampa a) b):t) os
                                                | a == Sul   && (head os) == Norte && (y-1) == b = alturas ((Peca (Rampa a) b):t) os
                                                | a == Oeste && (head os) == Este  && (y-1) == b = alturas ((Peca (Rampa a) b):t) os
                                                | a == Este  && (head os) == Oeste && (y-1) == b = alturas ((Peca (Rampa a) b):t) os
                                                | otherwise = False
alturas ((Peca x y):(Peca a b):t) (o:os) | y == b = alturas ((Peca a b):t) os
                                         | otherwise = False

{- | Função 'oriContrarias', facilita o cálculo das rampas quando se trata de descer.
  
    == Exemplos de utilização:

    >>> oriContrarias Norte
    Sul
-}

oriContrarias :: Orientacao -> Orientacao
oriContrarias Norte = Sul
oriContrarias Sul = Norte
oriContrarias Este = Oeste
oriContrarias Oeste = Este


{- | Função 'mapaToPeca', transforma um mapa numa lista de peças e posições, ambas ordenadas.
  
    == Exemplos de utilização:

    >>> mapaToPeca (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]) (3,3) Norte
    [(Peca Recta 0,(2,3)),(Peca Recta 0,(3,3)),(Peca Recta 0,(4,3)),(Peca (Curva Este) 0,(5,3)),(Peca Recta 0,(5,4)),(Peca (Curva Sul) 0,(5,5)),(Peca Recta 0,(4,5)),(Peca (Curva Oeste) 0,(3,5)),(Peca Recta 0,(3,4))]

-}

mapaToPeca :: Mapa -> Posicao -> Orientacao -> [(Peca,Posicao)]
mapaToPeca (Mapa ((m,n),o) tab) (a,b) o1 = if whatPeca tab (proxPos peca (m,n) o) == Peca Lava 0
  then []
  else if (proxPos peca (m,n) o) == (a,b) && (proxOri peca o) == o1
    then [(peca,(m,n))]
    else (peca,(m,n)) : mapaToPeca (Mapa ((proxPos peca (m,n) o),(proxOri peca o)) tab) (a,b) o1  
    where peca = ((!!) ((!!) tab n) m)


{- | Função 'whatPeca', caso específico para a função 'mapaToPeca'.
  
    == Exemplos de utilização:

    >>> whatPeca [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (2,2)
    Peca Lava 0
-}

whatPeca :: Tabuleiro -> Posicao -> Peca
whatPeca t (m,n) = ((!!) ((!!) t n) m)

{- | Função 'onlyPecas', a partir de uma lista de pares, diz a lista dos primeiros elementos de cada par.
  
    == Exemplos de utilização:

    >>> onlyPecas [(Peca Lava 1,(1,1)),(Peca Recta 3,(2,3))]
    [Peca Lava 1,Peca Recta 3]
-}

onlyPecas :: [(Peca,Posicao)] -> [Peca]
onlyPecas [(a,b)] = [a]
onlyPecas ((a,b):t) = a : onlyPecas t


{- | Função 'proxPos', calcula a próxima posicao dado uma peca, uma posicao inicial e uma orientacao (Usa uma função da T1 que diz a posicao depois de uma orientacao).
  
    == Exemplos de utilização:

    >>> proxPos (Peca (Curva Norte) 0) (2,2) Norte
    (3,2)
-}

proxPos :: Peca -> Posicao -> Orientacao -> Posicao
proxPos p (m,n) o | (pecaToPasso p o) == Just CurvaDir && o == Norte = (m+1,n)
                  | (pecaToPasso p o) == Just CurvaDir && o == Sul   = (m-1,n)
                  | (pecaToPasso p o) == Just CurvaDir && o == Oeste = (m,n-1)
                  | (pecaToPasso p o) == Just CurvaDir && o == Este  = (m,n+1)
                  | (pecaToPasso p o) == Just CurvaEsq && o == Norte = (m-1,n)
                  | (pecaToPasso p o) == Just CurvaEsq && o == Sul   = (m+1,n)
                  | (pecaToPasso p o) == Just CurvaEsq && o == Oeste = (m,n+1)
                  | (pecaToPasso p o) == Just CurvaEsq && o == Este  = (m,n-1)
                  | otherwise = moveAux (m,n) o

{- | Função 'proxOri', calcula a orientacao da próxima peca dado uma peca e uma orientacao inicial (Usa uma função da T1 que diz a orientacao seguinte quando são curvas).
  
    == Exemplos de utilização:

    >>> proxOri (Peca (Curva Norte) 0) Norte
    Este
-}

proxOri :: Peca -> Orientacao -> Orientacao
proxOri p o | pecaToPasso p o == Just CurvaDir = rodaDir o
            | pecaToPasso p o == Just CurvaEsq = rodaEsq o
            | otherwise = o

{- | Função 'listaDeOris', o mesmo da função 'proxOri' mas com listas.
  
    == Exemplos de utilização:

    >>> listaDeOris [Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0] Norte
    [Norte,Norte,Este,Este,Sul,Sul,Sul]
-}

listaDeOris :: [Peca] -> Orientacao -> [Orientacao]
listaDeOris [] _ = []
listaDeOris (h:t) o = o : listaDeOris t (proxOri h o)


---------------------------------------------------------------------------------------------------

{- | 5 - Função 'lavaMesmaAlturaTesta', testa se alguma lava tem altura diferente de 0 num mapa.
  
    == Exemplos de utilização:

    >>> lavaMesmaAlturaTesta lavaMesmaAlturaTesta (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

lavaMesmaAlturaTesta :: Mapa -> Bool
lavaMesmaAlturaTesta (Mapa ((m,n),o) t) = lavaMesmaAltura t

{- | Função 'lavaMesmaAltura', testa se alguma lava tem altura diferente de 0 num tabuleiro.
  
    == Exemplos de utilização:

    >>> lavaMesmaAltura [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

lavaMesmaAltura :: Tabuleiro -> Bool
lavaMesmaAltura [[]] = True
lavaMesmaAltura ([]:t) = lavaMesmaAltura t
lavaMesmaAltura (((Peca x y):xs):t) | x == Lava && y == 0 = lavaMesmaAltura (xs:t)
                                    | x == Lava && y /= 0 = False
                                    | otherwise = lavaMesmaAltura (xs:t)

---------------------------------------------------------------------------------------------------

{- | Função 'rodeadoLavaTesta', testa se um mapa é rodeado por lava num mapa.
  
    == Exemplos de utilização:

    >>> rodeadoLavaTesta (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

rodeadoLavaTesta :: Mapa -> Bool
rodeadoLavaTesta (Mapa ((m,n),o) t) = rodeadoLava t

{- | Função 'rodeadoLava', testa se um mapa é rodeado por lava num tabuleiro.
  
    == Exemplos de utilização:

    >>> rodeadoLava [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

rodeadoLava :: Tabuleiro -> Bool 
rodeadoLava (h:t) = (rodeadoLava1Linha) (h:t) && (rodeadoLavaULinha (h:t)) && (rodeadoLava1Coluna (h:t)) && (rodeadoLavaUColuna (h:t)) && (retangular (h:t))

{- | Função 'linhaLava', testa se uma linha é composta apenas por peças de Lava.
  
    == Exemplos de utilização:

    >>> linhaLava [Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    True
-}

linhaLava :: [Peca] -> Bool
linhaLava [] = True
linhaLava (h:t) = if h == Peca Lava 0
    then linhaLava t
    else False

{- | Função 'rodeadoLava1Linha', testa se a primeira linha é composta por apenas lava.
  
    == Exemplos de utilização:

    >>> rodeadoLava1Linha [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

rodeadoLava1Linha :: Tabuleiro -> Bool
rodeadoLava1Linha ([]:t) = True
rodeadoLava1Linha (h:t) = linhaLava h

{- | Função 'rodeadoLava1Coluna', testa se a primeira coluna é composta por apenas lava.
  
    == Exemplos de utilização:

    >>> rodeadoLava1Coluna [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

rodeadoLava1Coluna :: Tabuleiro -> Bool
rodeadoLava1Coluna [] = True
rodeadoLava1Coluna (x:xs) = if (head x) == Peca Lava 0
    then rodeadoLava1Coluna xs
    else False

{- | Função 'rodeadoLavaULinha', testa se a ultima linha é composta por apenas lava.
  
    == Exemplos de utilização:

    >>> rodeadoLavaULinha [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

rodeadoLavaULinha :: Tabuleiro -> Bool
rodeadoLavaULinha ([]:t) = True
rodeadoLavaULinha (h:t) = linhaLava (last t)

{- | Função 'rodeadoLavaUColuna', testa se a ultima coluna é composta por apenas lava.
  
    == Exemplos de utilização:

    >>> rodeadoLavaUColuna [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

rodeadoLavaUColuna :: Tabuleiro -> Bool
rodeadoLavaUColuna [] = True
rodeadoLavaUColuna (x:xs) = if (last x) == Peca Lava 0
    then rodeadoLavaUColuna xs
    else False

{- | Função 'retangular', função auxiliar de 'retangular' que testa se um mapa é retangular.
  
    == Exemplos de utilização:

    >>> retangular [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
    True
-}

retangular :: Tabuleiro -> Bool 
retangular (h:[]) = True
retangular (h:t) = if length h == length (head t)
    then retangular t
    else False

{- | Função 'retangularMapa', testa se um mapa é retangular.
  
    == Exemplos de utilização: 

    >>> retangularMapa (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

retangularMapa :: Mapa -> Bool
retangularMapa (Mapa ((m,n),o) t) = retangular t

---------------------------------------------------------------------------------------------------

{- | Função 'primeiraPeca', testa se a peca na posição inicial é ou não do tipo Lava.
  
    == Exemplos de utilização:

    >>> primeiraPeca (Mapa ((2,3),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]])
    True
-}

primeiraPeca :: Mapa -> Bool
primeiraPeca (Mapa ((m,n),o) t) = ((!!) ((!!) t n) m) /= Peca Lava 0
