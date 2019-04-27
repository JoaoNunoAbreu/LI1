{-|
Module      : Tarefa6_2017li1g75
Description : Módulo da Tarefa 6 para LI1 17/18

Módulo para a realização da Tarefa 6 de LI1 em 2017/18.
-}
module Tarefa6_2017li1g75 where

import LI11718
import Tarefa2_2017li1g75

{-|
Função usada para simular um /bot/ no jogo /Micro Machines/.
Em cada instante, dado o tempo decorrido, o estado do jogo
e o identificador do jogador, toma uma ação.
-}
bot :: Tempo  -- ^ tempo decorrido desde a última decisão
    -> Jogo   -- ^ estado atual do jogo
    -> Int    -- ^ identificador do jogador dentro do estado
    -> Acao   -- ^ a decisão tomada pelo /bot/
bot tick e j = bot1 e j

{-
    Sabendo a peça onde está o carro, a função toma diferentes comportamentos. Se
forem curvas, a preocupação é apenas saber para onde virar, se não, o objetivo é
estabilizar o comportamento do carro.

-}
bot1 :: Jogo -> Int -> Acao
bot1 (Jogo mapa pro l n h ) i | tipo peca == Curva Oeste  = paraOnde peca (decide saca peca)
                              | tipo peca == Curva Este   = paraOnde peca (decide saca peca)
                              | tipo peca == Curva Norte  = paraOnde peca (decide saca peca)
                              | tipo peca == Curva Sul    = paraOnde peca (decide saca peca)
                              | otherwise = estabiliza j i
    where
        peca = qualPeca mapa saca
        saca = (!!) l i
        j = (Jogo mapa pro l n h)


-- | Estabiliza o carro na pista.

estabiliza :: Jogo -> Int -> Acao
estabiliza (Jogo mapa pro l n h) i | tipo peca == Rampa Norte || tipo peca == Rampa Sul   = escolheVirarVertical saca
                                   | tipo peca == Rampa Este  || tipo peca == Rampa Oeste = escolheVirarHorizontal saca
                                   | tipo peca == Recta && testaPecasHorizontal j i = escolheVirarHorizontal saca
                                   | tipo peca == Recta && testaPecasVertical j i   = escolheVirarVertical saca
    where
        peca = qualPeca mapa saca
        saca = (!!) l i
        j = (Jogo mapa pro l n h)
 
{-
    Testa se há peças à esquerda e à direita. É útil pois identifica uma peça recta como uma peça 
  recta "horizontal". Serve da auxiliar da função estabiliza.

-}

testaPecasHorizontal :: Jogo -> Int -> Bool
testaPecasHorizontal (Jogo mapa _ l _ _) i = peca1 /= Peca Lava 0 && peca2 /= Peca Lava 0
    where
        peca1 = qualPeca mapa (Carro x dir vel)
        peca2 = qualPeca mapa (Carro y dir vel)
        x = (fst (posicoesDosLadosHor (extraiPontoCarro saca)))
        y = (snd (posicoesDosLadosHor (extraiPontoCarro saca)))
        saca = (!!) l i
        dir = extraiDirCarro saca
        vel = extraiVel saca

-- | Calcula as posições à esquerda e direita de uma determinada posição.

posicoesDosLadosHor :: Ponto -> (Ponto,Ponto)
posicoesDosLadosHor (m,n) = ((m-1,n),(m+1,n))

{-
    Testa se há peças acima e abaixo. É útil pois identifica uma peça recta como uma peça 
  recta "vertical". Serve da auxiliar da função estabiliza.

-}

testaPecasVertical :: Jogo -> Int -> Bool
testaPecasVertical (Jogo mapa _ l _ _) i = peca1 /= Peca Lava 0 && peca2 /= Peca Lava 0
    where
        peca1 = qualPeca mapa (Carro x dir vel)
        peca2 = qualPeca mapa (Carro y dir vel)
        x = (fst (posicoesDosLadosVer (extraiPontoCarro saca)))
        y = (snd (posicoesDosLadosVer (extraiPontoCarro saca)))
        saca = (!!) l i
        dir = extraiDirCarro saca
        vel = extraiVel saca

-- | Calcula as posições acima e abaixo de uma determinada posição.

posicoesDosLadosVer :: Ponto -> (Ponto,Ponto)
posicoesDosLadosVer (m,n) = ((m,n-1),(m,n+1))

{-
    Se for uma peça "vertical" (Rampas Norte e Sul e Recta "vertical") estabiliza
  o carro para não ir contra paredes ou em direção à lava quando se encontra neste
  tipo de peças.

-}

escolheVirarVertical :: Carro -> Acao
escolheVirarVertical (Carro _ _(m,n)) | m == 0 = (Acao True False False False Nothing)
                                      | m > 0 && n > 0 = (Acao True False False True Nothing)
                                      | m < 0 && n < 0 = (Acao True False False True Nothing)
                                      | m == n && m > 0 && n > 0 = (Acao True False False True Nothing)
                                      | m == n && m < 0 && n < 0 = (Acao True False False True Nothing)
                                      | otherwise = (Acao True False True False Nothing)

{-
    Se for uma peça "horizontal" (Rampas Oeste e Este e Recta "horizontal") estabiliza
  o carro para não ir contra paredes ou em direção à lava quando se encontra neste
  tipo de peças.

-}

escolheVirarHorizontal :: Carro -> Acao
escolheVirarHorizontal (Carro _ _(m,n)) | n == 0 = (Acao True False False False Nothing)
                                        | m > 0 && n > 0 = (Acao True False True False Nothing)
                                        | m < 0 && n < 0 = (Acao True False True False Nothing)
                                        | m == n && m > 0 && n > 0 = (Acao True False True False Nothing)
                                        | m == n && m < 0 && n < 0 = (Acao True False True False Nothing)
                                        | otherwise = (Acao True False False True Nothing)

-- | Decide para que lado virar nas curvas baseando-se na orientação do carro.

paraOnde :: Peca -> Orientacao -> Acao
paraOnde (Peca (Curva Oeste) _ ) o | o == Oeste = (Acao True False False True Nothing)
                                   | o == Sul   = (Acao True False True False Nothing)
                                   | otherwise = (Acao True False True False Nothing)
paraOnde (Peca (Curva Este) _ ) o  | o == Norte = (Acao True False True False Nothing)
                                   | o == Este  = (Acao True False False True Nothing)
                                   | otherwise = (Acao True False True False Nothing)
paraOnde (Peca (Curva Norte) _ ) o | o == Norte = (Acao True False False True Nothing)
                                   | o == Oeste = (Acao True False True False Nothing)
                                   | otherwise = (Acao True False True False Nothing)
paraOnde (Peca (Curva Sul) _ ) o   | o == Sul   = (Acao True False False True Nothing)
                                   | o == Este  = (Acao True False True False Nothing) 
                                   | otherwise = (Acao True False True False Nothing)

-- | A partir da velocidade do carro e peça onde está, retira a orientação para qual o carro está.

decide :: Carro -> Peca -> Orientacao
decide (Carro p d (m,n)) pec | testaPositivo (m,n) = extraiOriPositivo c pec
                             | testaNegativo (m,n) = extraiOriNegativo c pec
                             | testaNegativoPositivo (m,n) = extraiOriNegativoPositivo c pec
                             | testePositivoNegativo (m,n) = extraiOriPositivoNegativo c pec
      where
        c = (Carro p d (m,n))

-- | A partir da velocidade do carro (que tenha valores apenas positivos) e peça onde está, retira a orientação para qual o carro está.

extraiOriPositivo :: Carro -> Peca -> Orientacao
extraiOriPositivo (Carro _ _ (m,n)) (Peca (Curva x) y) | m < n = Sul 
                                                       | m > n = Este
                                                       | m == n && x == Oeste = Sul
                                                       | m == n && x == Este  = Este
                                                       | otherwise = x

-- | A partir da velocidade do carro (que tenha valores apenas negativos) e peça onde está, retira a orientação para qual o carro está.

extraiOriNegativo :: Carro -> Peca -> Orientacao
extraiOriNegativo (Carro _ _ (m,n)) (Peca (Curva x) y) | abs m < abs n = Norte
                                                       | abs m > abs n = Oeste
                                                       | abs m == abs n && x == Oeste = Oeste
                                                       | abs m == abs n && x == Este  = Norte
                                                       | otherwise = x

-- | A partir da velocidade do carro (que tenha o valor do x negativo e o valor do y positivo) e peça onde está, retira a orientação para qual o carro está.

extraiOriNegativoPositivo :: Carro -> Peca -> Orientacao
extraiOriNegativoPositivo (Carro _ _ (m,n)) (Peca (Curva x) y) | abs m < n = Sul
                                                               | abs m > n = Oeste
                                                               | abs m == n && x == Norte = Oeste
                                                               | abs m == n && x == Sul   = Sul
                                                               | otherwise = x

-- | A partir da velocidade do carro (que tenha o valor do x positivo e o valor do y negativo) e peça onde está, retira a orientação para qual o carro está.

extraiOriPositivoNegativo :: Carro -> Peca -> Orientacao
extraiOriPositivoNegativo (Carro _ _ (m,n)) (Peca (Curva x) y) | m < abs n = Norte
                                                               | m > abs n = Este
                                                               | m == abs n && x == Norte = Norte
                                                               | m == abs n && x == Sul   = Este
                                                               | otherwise = x

-- | Testa se ambos os valores da velocidade são positivos.

testaPositivo :: Velocidade -> Bool
testaPositivo (m,n) = m >= 0 && n >= 0

-- | Testa se ambos os valores da velocidade são negativos.

testaNegativo :: Velocidade -> Bool
testaNegativo (m,n) = m <= 0 && n <= 0

-- | Testa se o valor do x é negativo e o valor do y é positivo.

testaNegativoPositivo :: Velocidade -> Bool
testaNegativoPositivo (m,n) = m <= 0 && n >= 0

-- | Testa se o valor do y é positivo e o valor do y é negativo.

testePositivoNegativo :: Velocidade -> Bool
testePositivoNegativo (m,n) = m >= 0 && n <= 0

---------------------------------------------------------------------------------------------------

{-
    Funções mais pequenas no entanto úteis e usadas como auxiliares várias vezes. 
-}

-- | Extrai o tipo de uma peça.

tipo :: Peca -> Tipo
tipo (Peca x y) = x

-- | Extrai a peça sabendo o mapa e a posição do carro.

qualPeca :: Mapa -> Carro -> Peca
qualPeca (Mapa _ t) (Carro (m,n) _ _) = ((!!) ((!!) t (floor n)) (floor m))

-- | Extrai o carro da lista de carros obtida a partir do jogo baseando-se no índice i da lista.

sacaCarro :: Jogo -> Int -> Carro
sacaCarro (Jogo _ _ c _ _) i = (!!) c i

-- | Extrai a posição de um carro.

extraiPontoCarro :: Carro -> Ponto
extraiPontoCarro (Carro x _ _) = x

-- | Extrai a direção de um carro.

extraiDirCarro :: Carro -> Angulo
extraiDirCarro (Carro _ x _) = x

-- | Extrai a velocidade de um carro.

extraiVel :: Carro -> Velocidade
extraiVel (Carro _ _ x) = x

-- | Extrai a lista de carros do jogo.

extraiListaCarro :: Jogo -> [Carro]
extraiListaCarro (Jogo _ _ x _ _) = x

pontoToPos :: Ponto -> Posicao
pontoToPos (x,y) = (floor x, floor y)