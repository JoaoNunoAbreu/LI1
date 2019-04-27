module Tarefa1_2017li1g75 where

import LI11718 


testesT1 :: [Caminho]
testesT1 = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15]

c1 :: Caminho
c1 = [Avanca,Avanca]

c2 :: Caminho
c2 = [CurvaDir,CurvaDir]

c3 :: Caminho
c3 = [Avanca,CurvaDir,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,CurvaDir]

c4 :: Caminho
c4 = [Avanca,CurvaDir,Sobe,CurvaDir,Avanca,CurvaDir,Desce,CurvaDir] 

c5 :: Caminho
c5 = [Avanca,CurvaDir,Sobe,Avanca,CurvaDir,Sobe,Avanca,Desce,CurvaEsq,Avanca,Avanca,Avanca,CurvaEsq,CurvaDir,Sobe,Sobe,Sobe,Sobe,Avanca,CurvaDir,Desce,Avanca,Avanca,Avanca,Avanca,Avanca,Avanca,Avanca,CurvaDir,Sobe,Avanca,Desce,Desce,Desce,Desce,Desce,CurvaDir,CurvaEsq,Avanca,CurvaDir,Avanca,CurvaEsq,Sobe,Avanca,CurvaDir,Desce,Avanca,Avanca,Avanca,Avanca,Avanca,Avanca]

c6 :: Caminho
c6 = [Avanca,CurvaDir,Avanca,Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,Avanca,CurvaDir,Avanca,CurvaDir]

c7 :: Caminho
c7 = [Avanca,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca]

c8 :: Caminho
c8 = []

c9 :: Caminho
c9 = [CurvaEsq,CurvaEsq,CurvaEsq,CurvaEsq]

c10 :: Caminho
c10 = [CurvaDir,CurvaDir,CurvaDir,CurvaDir]

c11 :: Caminho
c11 = [Desce,Desce]

c12 :: Caminho
c12 = [Sobe,Sobe]

c13 :: Caminho
c13 = [CurvaEsq]

c14 :: Caminho
c14 = [CurvaDir]

c15 :: Caminho
c15 = [Avanca]


{- | Função 'constroi', objetivo da Tarefa 1.
  
    == Exemplos de utilização:

    >>> constroi [Avanca,CurvaDir,Avanca,Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,Avanca,CurvaDir,Avanca,CurvaDir]
    Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
-}

constroi :: Caminho -> Mapa
constroi c = Mapa (partida c,Este) (constroiAux c)

{- | Função 'constroiAux', auxiliar da função 'constroi' que define o tabuleiro usado na função 'constroi'.
  
    == Exemplos de utilização:

    >>> constroiAux [Avanca,CurvaDir,Avanca,Avanca,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,CurvaEsq,Avanca,Avanca,Avanca,CurvaDir,Avanca,CurvaDir]
    [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca Recta 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Curva Sul) 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
-}

constroiAux :: Caminho -> Tabuleiro 
constroiAux [] = mapaLava (dimensao [])
constroiAux c = substituiTudo (mapaLava (dimensao c)) (posicoes c (partida c) Este) pec
    where
        pec = pecaTudo (oriNaPosSeguinteTudo c Este) c (alturasSeguinteTudo 0 c)

---------------------------------------------------------------------------------------------------

{- | Função 'move', define a posição seguinte a partir de uma posição e segundo um passo e uma orientação.
  
    == Exemplos de utilização:

    >>> move (2,3) Avanca Norte
    (2,2)
-}

move :: Posicao -> Passo -> Orientacao -> Posicao
move (x,y) CurvaDir m = moveAux (x,y) m
move (x,y) CurvaEsq m = moveAux (x,y) m
move (x,y) _ m = moveAux (x,y) m

{- | Função 'move2', define a Posição seguinte depois de um passo.
  
    == Exemplos de utilização:

    >>> move2 (2,3) Avanca Norte
    (2,2)
-}

move2 :: Posicao -> Passo -> Orientacao -> Posicao
move2 (x,y) CurvaDir m = moveAux2 (x,y) CurvaDir m
move2 (x,y) CurvaEsq m = moveAux2 (x,y) CurvaEsq m
move2 (x,y) _ m = moveAux (x,y) m

{- | Função 'moveAux', auxiliar da função 'move' que diz a posicao baseada na orientacao e na posicao inicial.
  
    == Exemplos de utilização:

    >>> moveAux (2,3) Norte
    (2,2)
-}

moveAux :: Posicao -> Orientacao -> Posicao
moveAux (x,y) Norte = (x,y-1)
moveAux (x,y) Sul = (x,y+1)
moveAux (x,y) Oeste = (x-1,y)
moveAux (x,y) Este = (x+1,y)

{- | Função 'moveAux2', auxiliar da função 'move2' que diz qual a posição seguinte tendo a posição original, uma CurvaDir ou CurvaEsq e uma orientação.
  
    == Exemplos de utilização:

    >>> moveAux2 (2,3) CurvaDir Norte
    (3,3)
-}

moveAux2 :: Posicao -> Passo -> Orientacao -> Posicao
moveAux2 (x,y) CurvaDir o | o == Norte = (x+1,y)
                          | o == Sul = (x-1,y)
                          | o == Oeste = (x,y-1)
                          | o == Este = (x,y+1)
moveAux2 (x,y) CurvaEsq o | o == Norte = (x-1,y)
                          | o == Sul = (x+1,y)
                          | o == Oeste = (x,y+1)
                          | o == Este = (x,y-1)

{- | Função 'rodaDir', define qual é a Orientação após uma Curva à Direita (CurvaDir) no mapa.
  
    == Exemplos de utilização:

    >>> rodaDir Sul
    Oeste
-}

rodaDir :: Orientacao -> Orientacao
rodaDir Este = Sul
rodaDir Sul = Oeste
rodaDir Oeste = Norte
rodaDir Norte = Este   

{- | Função 'rodaEsq', define qual é a Orientação após uma Curva à Esquerda (CurvaEsq) no mapa.
  
    == Exemplos de utilização:

    >>> rodaEsq Sul
    Este
-}

rodaEsq :: Orientacao -> Orientacao
rodaEsq Este = Norte
rodaEsq Sul = Este
rodaEsq Oeste = Sul
rodaEsq Norte = Oeste

---------------------------------------------------------------------------------------------------

{- | Função 'mapaLava', colocar o mapa inicial, dado por uma dimensão, todo com peças do tipo Lava.
  
    == Exemplos de utilização:

    >>> mapaLava (2,3)
    [[Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0]]
-}

mapaLava :: Dimensao -> Tabuleiro
mapaLava (x,0) = []
mapaLava (x,y) = mapaLavaLinhas x : mapaLava (x,y-1) 

{- | Função 'mapaLavaLinhas', auxiliar da função 'mapaLava' que define todas as peças de uma determinada linha como sendo do tipo Lava, a partir do número de elementos dessa linha.
  
    == Exemplos de utilização:

    >>> mapaLavaLinhas 3
    [Peca Lava 0,Peca Lava 0,Peca Lava 0]
-}

mapaLavaLinhas :: Int -> [Peca]
mapaLavaLinhas 0 = []
mapaLavaLinhas x = Peca Lava 0 : mapaLavaLinhas (x-1)

---------------------------------------------------------------------------------------------------

{- | Função 'peca', define a peça que irá corresponder a um passo do caminho testado, associado a uma orientação e uma altura.
  
    == Exemplos de utilização:

    >>> peca Oeste Avanca 1
    Peca Recta 1
-}
peca :: Orientacao -> Passo -> Altura -> Peca
peca x Avanca l = Peca Recta l
peca x CurvaEsq l = Peca (Curva (oriDasPecas CurvaEsq x)) l
peca x CurvaDir l = Peca (Curva (oriDasPecas CurvaDir x)) l
peca x Sobe l = Peca (Rampa (oriDasPecas Sobe x)) l
peca x Desce l = Peca (Rampa (oriDasPecas Desce x)) l

{- | Função 'pecaTudo', faz o mesmo que o definido na função 'peca', mas para o caminho inteiro, definindo assim uma lista de peças.
  
    == Exemplos de utilização:

    >>> pecaTudo [Este,Este,Este] [Avanca,CurvaDir,Sobe] [0,0,0]
    [Peca Recta 0,Peca (Curva Este) 0,Peca (Rampa Este) 1]
-}

pecaTudo :: [Orientacao] -> Caminho -> [Altura] -> [Peca]
pecaTudo [] _ _ = []
pecaTudo (o:os) (p:ps) (l:ls) | p == Desce = Peca (Rampa o) l : pecaTudo os ps ls
                              | p == CurvaEsq = Peca (Curva o) l : pecaTudo os ps ls
                              | otherwise  = peca o p l : pecaTudo os ps (alturasSeguinteTudo (alturasSeguinte l p) ps)

{- | Função 'oriDasPecas', a partir de um passo e da orientação desse passo, define a orientação da peça correspondente.
  
    == Exemplos de utilização:

    >>> oriDasPecas CurvaDir Norte
    Norte
-}

oriDasPecas :: Passo -> Orientacao -> Orientacao
oriDasPecas CurvaEsq Norte = Este
oriDasPecas CurvaEsq Sul = Oeste
oriDasPecas CurvaEsq Oeste = Norte
oriDasPecas CurvaEsq Este = Sul 
oriDasPecas Desce Norte = Sul
oriDasPecas Desce Oeste = Este
oriDasPecas Desce Este = Oeste
oriDasPecas Desce Sul = Norte
oriDasPecas _ x = x

{- | Função 'oriNaPosSeguinteTudo', define a Orientação de todas as pecas a partir do caminho.
  
    == Exemplos de utilização:

    >>> oriNaPosSeguinteTudo [Avanca,CurvaEsq,Sobe] Norte
    [Norte,Este,Oeste]
-}

oriNaPosSeguinteTudo :: Caminho -> Orientacao -> [Orientacao]
oriNaPosSeguinteTudo [] _ = []
oriNaPosSeguinteTudo [p] m = [oriDasPecas p m]   
oriNaPosSeguinteTudo (p:ps) m = oriDasPecas p m : oriNaPosSeguinteTudo ps (oriNaPosSeguinte p m)

{- | Função 'oriNaPosSeguinte', a partir de um passo e de uma orientação geral define qual vai ser a orientação no próximo passo.                                   |||||||||||||||||||||||||||\
  
    == Exemplos de utilização:

    >>> oriNaPosSeguinte CurvaDir Norte
    Este
-}

oriNaPosSeguinte :: Passo -> Orientacao -> Orientacao
oriNaPosSeguinte CurvaDir x = rodaDir x
oriNaPosSeguinte CurvaEsq x = rodaEsq x
oriNaPosSeguinte _ x = x
 
{- | Função 'alturasSeguinte', define a altura da peça seguinte.
  
    == Exemplos de utilização:

    >>> alturasSeguinte 1 Sobe
    2
-}

alturasSeguinte :: Altura -> Passo -> Altura
alturasSeguinte i Sobe = i+1
alturasSeguinte i Desce = i-1
alturasSeguinte i _ = i

{- | Função 'alturasSeguinteTudo', faz o mesmo que a função 'alturasSeguinte' mas para o caminho inteiro, definindo assim a lista de alturas das peças do Percuso.
  
    == Exemplos de utilização:

    >>> alturasSeguinteTudo 1 [Avanca,CurvaEsq,Sobe]
    [1,1,2]
-}

alturasSeguinteTudo :: Altura -> Caminho -> [Altura]
alturasSeguinteTudo _ [] = []
alturasSeguinteTudo l [p] = [alturasSeguinte l p]
alturasSeguinteTudo l (c:cs) = if c == Desce 
    then alturasSeguinte l c : alturasSeguinteTudo (alturasSeguinte l c) cs
    else l : alturasSeguinteTudo (alturasSeguinte l c) cs  

---------------------------------------------------------------------------------------------------

{- | Função 'substitui', a partir do tabuleiro definido em 'mapaLava', substitui a peça existente numa determinada posição pela peça dada, definindo um novo tabuleiro.
  
    == Exemplos de utilização:

    >>> substitui [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (1,1) (Peca Recta 1)
    [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 1,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
-}

substitui :: Tabuleiro -> Posicao -> Peca -> Tabuleiro
substitui [] _ _ = []
substitui ((x:xs):t) (0,0) p = (p:xs):t
substitui ((x:xs):t) (m,0) p = substituiAux (x:xs) (m,0) p :t
substitui ((x:xs):t) (m,n) p = (x:xs):substitui t (m,n-1) p 

{- | Função 'substituiAux', auxiliar da função 'substitui' que, a partir de uma lista de peças do Tabuleiro definido em 'mapaLava', que corresponde a uma linha, substitui a peça existente numa determinada posição pela peça dada.
  
    == Exemplos de utilização:

    >>> substituiAux [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0] (2,0) (Peca Recta 1)
    [Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Lava 0]
-}

substituiAux :: [Peca] -> Posicao -> Peca -> [Peca]
substituiAux [] _ _ = []
substituiAux (x:xs) (0,n) p = p:xs
substituiAux (x:xs) (m,n) p = x:substituiAux xs (m-1,n) p

{- | Função 'substituiTudo', faz o mesmo que a função 'substitui' mas para um conjunto de peças e posições correspondentes, ou seja, substitui, sucessivamente, a peça existente numa determinada posição pela peça dada, colocando cada peça dada na posição correspondente e definindo um novo tabuleiro.
  
    == Exemplos de utilização:

    >>> substituiTudo [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] [(1,1),(2,2),(1,3)] [(Peca Recta 1),(Peca Recta 1),(Peca (Curva Norte) 1)]
    [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 1,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Recta 1,Peca (Rampa Sul) 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
-}

substituiTudo :: Tabuleiro -> [Posicao] -> [Peca] -> Tabuleiro
substituiTudo [] _ _ = []
substituiTudo ((x:xs):t) [(m,n)] [p] = (x:xs):substitui t (m,n-1) p
substituiTudo ((x:xs):t) ((m,n):ms) (p:ps) = substituiTudo (substitui ((x:xs):t) (m,n) p) ms ps

---------------------------------------------------------------------------------------------------

{- | Função 'posicoes', a partir de um caminho, diz qual são as posições no tabuleiro.
  
    == Exemplos de utilização:

    >>> posicoes [Avanca,CurvaDir,Avanca,CurvaDir,Avanca,CurvaDir,Avanca,CurvaDir] (2,3) Norte
    [(2,3),(2,2),(3,2),(4,2),(4,3),(4,4),(3,4),(2,4)]
-}

posicoes :: Caminho -> Posicao -> Orientacao -> [Posicao]
posicoes [] _ _ = []
posicoes [h] (m,n) o = [(m,n)]
posicoes (h:t) (m,n) o | (h == CurvaDir && head t == CurvaEsq) || (h == CurvaEsq && head t == CurvaDir) = (m,n) : posicoes t (move (m,n) h o) (oriNaPosSeguinte (head t) o)
                       | head t == CurvaDir || head t == CurvaEsq = (m,n) : posicoes t (move2 (m,n) h o) (oriNaPosSeguinte (head t) o)
                       | otherwise = (m,n) : posicoes t (move (m,n) h o) (oriNaPosSeguinte (head t) o)
