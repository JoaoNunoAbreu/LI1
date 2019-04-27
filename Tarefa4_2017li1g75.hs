{-|
Module      : Tarefa4_2017li1g75
Description : Módulo da Tarefa 4 para LI1 17/18

Módulo para a realização da Tarefa 4 de LI1 em 2017/18.
-}
module Tarefa4_2017li1g75 where

import LI11718

{-|
O testes a serem considerados pelo sistema de /feedback/
para a função 'atualiza'.
-}

testesT4 :: [(Tempo,Jogo,Acao)]
testesT4 = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26]

t1 = (1,
    (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta 1,Peca Recta 1,Peca Recta 1,Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta 1,Peca Recta 1,Peca Recta 1,Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 2 ,  k_pneus = 3 , k_acel = 4 , k_peso = 2 , k_nitro = 15 , k_roda = 180 }, carros = [ Carro { posicao = (2,1) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [0] 
    , historico = [[(2,1)]] } )
    , (Acao { acelerar = True , travar = False, esquerda = False , direita = True , nitro = Nothing }))

t2 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [0.0]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = True, travar = False, esquerda = False, direita = True, nitro = Nothing}))

t3 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [0.0]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = True, travar = False, esquerda = False, direita = False, nitro = Nothing}))

t4 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [0]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = True, travar = False, esquerda = False, direita = False, nitro = Just 0}))


-- | Teste da direcao -45

t5 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = -45 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste de acelerar

t6 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 4 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = True , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste de travar

t7 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 4 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = True, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste de virar esquerda

t8 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = True , direita = False , nitro = Nothing }))

-- | Teste de virar direita

t9 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = True , nitro = Nothing }))

-- | Teste de usar nitro no proprio carro.

t10 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 15 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) }, Carro { posicao = (2.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1,1] 
    , historico = [[],[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Just 0}))

-- | Teste de usar nitro noutro carro.

t11 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 15 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) }, Carro { posicao = (2.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1,1] 
    , historico = [[],[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Just 1}))

-- | Teste do atrito

t12 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 2 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste dos pneus

t13 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 3 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste da aceleracao

t14 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 4 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste do peso

t15 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca (Rampa Oeste) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 2 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (0,0) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Teste do k_roda

t16 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 0 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 180 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 0 , velocidade = (1,1) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

t17 = (0.5,
    (Jogo {mapa = Mapa ((1,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
    ,[Peca Lava 0, Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca Recta 0, Peca Lava 0]
    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] 
    , pista  = Propriedades { k_atrito = 0 ,  k_pneus = 3 , k_acel = 0 , k_peso = 0 , k_nitro = 0 , k_roda = 0 }, carros = [ Carro { posicao = (1.5,1.5) , direcao = 45 , velocidade = (-1,0) } ] , nitros  = [1.0] 
    , historico = [[]]})
    , (Acao { acelerar = False , travar = False, esquerda = False , direita = False , nitro = Nothing }))

-- | Igual ao teste 4 só que não está a acelerar

t18 = (0.5,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [0]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = False, travar = False, esquerda = False, direita = False, nitro = Just 0}))

-- | Mais um teste random

t19 = (4.0,
 Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0],[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0],[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]], pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (0.0,1.0)}], nitros = [2.0], historico = [[]]},
 Acao {acelerar = True, travar = False, esquerda = True, direita = False, nitro = Nothing})

-- | Teste de 2 carros a acelarar

t20 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)},Carro {posicao = (3.5,3.5) , direcao = -90 , velocidade = (0,1)}], nitros = [0,0]
     , historico = [[(2,1)],[]]})
     ,(Acao {acelerar = True, travar = False, esquerda = False, direita = False, nitro = Nothing}))

t21 = (0.5,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [5]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = False, travar = False, esquerda = False, direita = False, nitro = Just 0}))

t22 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [5]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = True, travar = False, esquerda = False, direita = False, nitro = Just 0}))

-- | Teste do nitro com tudo a 0 excepto o k_nitro e direcao 10.

t23 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 0, k_pneus = 0, k_acel = 0, k_peso = 0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 10, velocidade = (1.0,1.0)}], nitros = [5]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = False, travar = False, esquerda = False, direita = False, nitro = Just 0}))

-- | Teste com a direcao 10 e com tudo ativo.

t24 = (1,
 (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Norte) 1,Peca Recta 1,Peca (Curva Este) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Recta 1,Peca Lava 0,Peca Recta 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0]
                                 ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
     , pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (2.0,1.0), direcao = 10, velocidade = (1.0,1.0)}], nitros = [5]
     , historico = [[(2,1)]]})
     ,(Acao {acelerar = False, travar = False, esquerda = False, direita = False, nitro = Just 0}))

t25 = (2.0,
 Jogo {mapa = Mapa ((6,5),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca Recta 0,Peca Recta 0,Peca (Curva Este) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Recta 0,Peca Lava 0,Peca (Curva Norte) 0,Peca (Curva Este) 0,Peca Recta 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca Recta 0,Peca (Curva Sul) 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Rampa Norte) (-1),Peca Lava 0,Peca (Rampa Norte) 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca Recta 1,Peca (Rampa Este) 1,Peca Recta 2,Peca (Rampa Este) 2,Peca Recta 3,Peca (Rampa Este) 3,Peca Recta 4,Peca (Rampa Este) 4,Peca Recta 5,Peca (Rampa Este) 5,Peca Recta 6,Peca (Rampa Este) 6,Peca (Curva Este) 7,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca Recta (-1),Peca Recta (-1),Peca (Rampa Oeste) (-2),Peca Recta (-2),Peca (Curva Este) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) 0,Peca (Rampa Este) 0,Peca (Rampa Este) 1,Peca (Rampa Este) 2,Peca (Rampa Este) 3,Peca (Rampa Este) 4,Peca (Rampa Este) 5,Peca (Rampa Este) 6,Peca (Curva Sul) 7,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-1),Peca (Curva Sul) (-1),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-2),Peca (Curva Este) (-2),Peca Recta (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) 0,Peca Recta 0,Peca (Rampa Oeste) (-1),Peca (Rampa Oeste) (-2),Peca (Rampa Oeste) (-3),Peca (Rampa Oeste) (-4),Peca (Curva Este) (-4),Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-2),Peca Recta (-2),Peca (Curva Sul) (-2),Peca (Curva Norte) (-2),Peca (Curva Este) (-2),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-4),Peca (Curva Este) (-4),Peca Recta (-4),Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Recta (-2),Peca Lava 0,Peca (Curva Oeste) (-2),Peca Recta (-2),Peca (Rampa Oeste) (-3),Peca Recta (-3),Peca Recta (-3),Peca (Curva Este) (-3),Peca Lava 0,Peca (Curva Oeste) (-4),Peca Recta (-4),Peca (Curva Sul) (-4),Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-2),Peca Recta (-2),Peca Recta (-2),Peca (Curva Sul) (-2),Peca Lava 0,Peca Lava 0,Peca (Curva Norte) (-3),Peca Recta (-3),Peca (Rampa Oeste) (-4),Peca Recta (-4),Peca (Curva Sul) (-4),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca (Curva Oeste) (-3),Peca (Curva Sul) (-3),Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]], pista = Propriedades {k_atrito = 2.0, k_pneus = 3.0, k_acel = 4.0, k_peso = 2.0, k_nitro = 15.0, k_roda = 180.0}, carros = [Carro {posicao = (9.0,5.0), direcao = 10.0, velocidade = (1.0,1.0)},Carro {posicao = (10.0,5.0), direcao = 0.0, velocidade = (4.0,4.0)},Carro {posicao = (20.5,5.5), direcao = 0.0, velocidade = (20.0,15.0)}], nitros = [3.0,1.0,4.0], historico = [[(2,1)],[(2,1)],[(2,1)]]},
 Acao {acelerar = True, travar = False, esquerda = False, direita = False, nitro = Just 0})

t26 = (1.0,
 Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0],[Peca Lava 0,Peca (Curva Norte) 0,Peca Recta 0,Peca (Rampa Este) 0,Peca (Curva Este) 1,Peca Lava 0],[Peca Lava 0,Peca (Rampa Sul) 0,Peca Lava 0,Peca Lava 0,Peca Recta 1,Peca Lava 0],[Peca Lava 0,Peca (Curva Oeste) 1,Peca Recta 1,Peca Recta 1,Peca (Curva Sul) 1,Peca Lava 0],[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]], pista = Propriedades {k_atrito = 0.0, k_pneus = 3.0, k_acel = 0.0, k_peso = 2.0, k_nitro = 0.0, k_roda = 0.0}, carros = [Carro {posicao = (4.0,1.0), direcao = -90.0, velocidade = (3.0,3.0)},Carro {posicao = (2.0,1.5), direcao = 0.0, velocidade = (4.0,1.0)},Carro {posicao = (4.0,1.0), direcao = 0.0, velocidade = (1.0,1.0)}], nitros = [2.0,3.0,1.0], historico = [[(2,1)],[],[]]},
 Acao {acelerar = True, travar = False, esquerda = False, direita = True, nitro = Nothing})

{-|
Função usada para atualizar o estado do jogo dadas as
ações de um jogador num determinado período de tempo.
-}

atualiza :: Tempo -- ^ a duração da ação
         -> Jogo  -- ^ o estado do jogo
         -> Int   -- ^ o identificador do jogador
         -> Acao  -- ^ a ação tomada pelo jogador
         -> Jogo  -- ^ o estado atualizado do jogo
atualiza t (Jogo m (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda) ((Carro pos dir v):xs) n h) i a = if extraiNitro a /= Nothing
  then 
  Jogo m 
       p
       (somaNitro (nitroo k_nitro i (extraiNitro a) t n c) (listaCarros c i (atualizaAux t j i a)))
       (listaTemposNitros n i t)
       (historicoTudo h c i)
  else
  Jogo m 
       p
       (listaCarros c i (atualizaAux t j i a))
       n
       (historicoTudo h c i)
            where
                p = (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda) 
                c = (Carro pos dir v):xs 
                j = (Jogo m p c n h)
{-
    Basicamente é a função atualiza só que o resultado é apenas o carro 
com a sua VELOCIDADE e DIREÇÃO devidamente alteradas. Depois este carro
é inserido na função atualiza no sítio correto da lista.
-}

atualizaAux :: Tempo -> Jogo -> Int -> Acao -> Carro
atualizaAux t (Jogo m (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda) carro n h) i a = 
  (Carro 
  (extraiPos c) 
  (direcaoAtualiza c a k_roda t)
  (vetorVelocidade m p a c t))
    where
        c = (!!) carro i
        p = (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda)


{-
    Esta função serve para somar a velocidade da lista de carros obtida com a funcao "nitroo" com
a lista de carros com a sua velocidade já devidamente alterada. OBS : A posição e a direção na
primeira lista de carros não interessa pois a função "nitro" não altera esses valores, apenas os
da velocidade.
-}

somaNitro :: [Carro] -> [Carro] -> [Carro]
somaNitro [x] [] = [x]
somaNitro [] [x] = [x]
somaNitro ((Carro _ _ (vx,vy)):t) ((Carro a b (vx1,vy1)):xs) = (Carro a b (vx + vx1 , vy + vy1):somaNitro t xs)
somaNitro _ _ = []


---------------------------------------------------------------------------------------------------

{-
    A função vetorVelocidade difere em relação à funcao vetorVelocidadeSemGravidade na soma da gravidade
    tal como o nome indica. Testa se o carro se encontra numa rampa e se sim, somar os valores da gravidade
    , se não, apenas correr a função vetorVelocidadeSemGravidade.

-}

vetorVelocidade :: Mapa -> Propriedades -> Acao -> Carro -> Tempo -> Velocidade
vetorVelocidade (Mapa (posicao,orientacao) tab) (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda) (Acao a tra e d nitro) (Carro (m,n) dir v) t = if testaRampa tab (pontoToPos (m,n))
  then (fst (extraiVelocidade (gravidade k_peso (whatPeca tab (m,n)) c t)) + fst (vetorVelocidadeSemGravidade mapa p acao c t) 
       ,snd (extraiVelocidade (gravidade k_peso (whatPeca tab (m,n)) c t)) + snd (vetorVelocidadeSemGravidade mapa p acao c t)) 
  else vetorVelocidadeSemGravidade mapa p acao c t
    where
        p = (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda)
        c = (Carro (m,n) dir v)
        acao = (Acao a tra e d nitro)
        mapa = (Mapa (posicao,orientacao) tab)

{-
    A função vetorVelocidadeSemGravidade soma sempre a força de atrito e das forças dos pneus e testa se o 
    carro está a acelerar ou a travar e aplica as respetivas forças em caso afirmativo.

-}


vetorVelocidadeSemGravidade :: Mapa -> Propriedades -> Acao -> Carro -> Tempo -> Velocidade
vetorVelocidadeSemGravidade (Mapa _ tab) (Propriedades k_atrito k_pneus k_acel k_peso k_nitro k_roda) (Acao a tra e d nitro) (Carro pos dir v) t
     | a = (fstAcel + firstsAlways , sndAcel + secondsAlways)
     | tra = (fstTrav + firstsAlways, sndTrav + secondsAlways)
     | otherwise = (firstsAlways,secondsAlways)
        where firstsAlways = fst (vatrito k_atrito v t) + fst (forcaPneus c k_pneus t) + fst v
              secondsAlways = snd (vatrito k_atrito v t) + snd (forcaPneus c k_pneus t) + snd v
              fstAcel = fst (vacel k_acel dir t)
              sndAcel = snd (vacel k_acel dir t)
              fstTrav = fst (vtrav k_acel dir t)
              sndTrav = snd (vtrav k_acel dir t)
              c = (Carro pos dir v)

{-
    Cálculo do valor do atrito. O sinal vai ser sempre o inverso. 
    
    == Exemplos:

    >>> vatrito 2 (1,1) 1 
    (-2.0,-2.0)

    >>> vatrito 2 (-1,-1) 1
    (2.0,2.0)
-}

vatrito :: Double -> Velocidade -> Tempo -> Velocidade
vatrito k_atrito (m,n) t = (- k_atrito * m * t, - k_atrito * n * t)

-- | Cálculo do valor da aceleração.

vacel :: Double -> Angulo -> Tempo -> Velocidade
vacel k_acel ang t = (cos (-(toRad ang)) * k_acel * t, sin (-(toRad ang)) * k_acel * t)

-- | Cálculo do valor da travagem.

vtrav :: Double -> Angulo -> Tempo -> Velocidade
vtrav k_acel ang t = (cos (-(toRad ang)) * k_acel * (-1) * t, sin (-(toRad ang)) * k_acel * (-1) * t)

-- | Cálculo do valor da gravidade.

gravidade :: Double -> Peca -> Carro -> Tempo -> Carro
gravidade k_peso (Peca (Rampa o) l) (Carro p d (m,n)) t | o == Norte = (Carro p d (0,k_peso * t))
                                                        | o == Sul   = (Carro p d (0,-k_peso * t))
                                                        | o == Oeste = (Carro p d (k_peso * t,0))
                                                        | o == Este  = (Carro p d (-k_peso * t,0))


{-
    Calcula a força dos pneus. 
    Se a diferença entre o ângulo que a velocidade faz e a direção do carro - 90º
    for maior do que 90º, então subtrair 90º à direção, se não, somar 90ª em vez de
    subtrair. Estes ângulos resultante vão ser usados nas coordenadas polares
    juntamente com a norma que já é dada no enunciado. No fim as coordenadas polares
    são convertidas em cartesianas.
    
    == Exemplo do enunciado:

    >>> forcaPneus (0,-1) 3 45 1
    (1.5,1.5)

-}

forcaPneus :: Carro -> Double -> Tempo -> Velocidade
forcaPneus (Carro (m,n) dir (x,y)) k_pneus t = if abs ((calcAngulo (x,y)) - (toRad dir - pi/2)) > pi/2
    then toCartesiano ((abs((sin ang) * k_pneus * t * norm)),(toRad dir - pi/2))
    else toCartesiano ((abs((sin ang) * k_pneus * t * norm)),(toRad dir + pi/2))
        where ang = calcAngulo (x,y) - toRad dir
              norm = norma (x,y)

---------------------------------------------------------------------------------------------------


-- | Atualiza a direção do carro baseando-se na ação tomada pelo jogador e pelo tempo decorrido.

direcaoAtualiza :: Carro -> Acao -> Double -> Tempo -> Double
direcaoAtualiza (Carro (m,n) dir (vx,vy)) (Acao a t e d ni) k_roda temp | e && d == False = anguloMenor360 (dir + k_roda * temp)
                                                                        | d && e == False = anguloMenor360 (dir - k_roda * temp)
                                                                        | otherwise = anguloMenor360 dir
                                                                        
-- | Transformar um angulo superior a 360 num angulo entre 0 e 360 graus.

anguloMenor360 :: Angulo -> Angulo
anguloMenor360 x = if x >= 360
    then anguloMenor360 (x - 360)
    else x

-- | Histórico para vários carros.

historicoTudo :: [[Posicao]] -> [Carro] -> Int -> [[Posicao]]
historicoTudo [] _ _ = []
historicoTudo p c i = listaPosicoes p i ((!!) p i) ((!!) c i)

-- | Altera o historico de um determinado carro por outro e mantém o histórico dos outros carros.

listaPosicoes :: [[Posicao]] -> Int -> [Posicao] -> Carro -> [[Posicao]]
listaPosicoes p1 i p2 c = takeListaLista i p1 +++ [historicoAtualiza p2 c] +++ dropListaLista (i+1) p1

{- 
    Atualiza o histórico das Posições só para um carro. Adiciona à cabeça da lista a posição do carro
caso não seja igual à seguinte.

-}

historicoAtualiza :: [Posicao] -> Carro -> [Posicao]
historicoAtualiza [] (Carro pon dir v) = [pontoToPos pon]
historicoAtualiza (h:t) (Carro pon dir v) = if h == (pontoToPos pon)
    then (h:t)
    else [(pontoToPos pon)] ++ (h:t)

---------------------------------------------------------------------------------------------------

-- | Calcula a lista de carros depois de aplicado o nitro num carro.

nitroo :: Double -> Int -> Maybe Int -> Tempo -> [Tempo] -> [Carro] -> [Carro]
nitroo k_nitro i1 Nothing real tnitro c = c
nitroo k_nitro i1 (Just i2) real tnitro c | i1 == i2 = listaCarros (listaSvelocidade c) i1 (nitro1Carro k_nitro real ((!!) tnitro i1) ((!!) c i1))
                                          | otherwise = listaCarros (listaSvelocidade c) i2 (nitro1Carro k_nitro real ((!!) tnitro i1) ((!!) c i2))

-- | Pegar na lista de carros e substituir os valores do carro no indíce i por outros pretendidos. 

listaCarros :: [Carro] -> Int -> Carro -> [Carro]
listaCarros c1 i c2 = take i c1 ++ [c2] ++ drop (i+1) c1

{- 
    Esta função é usada como auxiliar da função "nitroo". Esta última pega na lista de carros
    e substitui o carro devidamente alterado depois de aplicado o nitro. Como não interessa o
    estado dos outros carros que não foram aplicados nitros, pode-se colocar todos com velocidade
    com valor 0, o que facilita depois na soma de todas as outras forças na função "somaNitro" (e
    esta por sua vez é usada na função atualiza).

-}

listaSvelocidade :: [Carro] -> [Carro]
listaSvelocidade [] = []
listaSvelocidade ((Carro a b (x,y)):t) = (Carro a b (0,0)):listaSvelocidade t

-- | Calcula o durante quanto tempo é que um carro vai usar nitro.

nitro1Carro :: Double -> Tempo -> Tempo -> Carro -> Carro
nitro1Carro k_nitro real tnitro (Carro p d (m,n)) = if real <= tnitro
  then velocidadeNitro k_nitro real (Carro p d (m,n))
  else velocidadeNitro k_nitro tnitro (Carro p d (m,n))

-- | Calcula o vetor velocidade depois de aplicado o nitro no carro. Posição e direção do carro não são alteradas.

velocidadeNitro :: Double -> Tempo -> Carro -> Carro
velocidadeNitro k_nitro t (Carro p d (m,n)) = Carro p d (toCartesiano ((k_nitro * t),toRad d))

-- | Calcula o tempo restante de nitro que um carro vai ter (Usada na função abaixo).

tempoNitro :: Tempo -> Tempo -> Tempo
tempoNitro tnitro real = if real >= tnitro then 0 else tnitro - real

-- | Calcula a lista de tempos de nitro de cada carro depois de um período de tempo.

listaTemposNitros :: [Tempo] -> Int -> Tempo -> [Tempo]
listaTemposNitros t1 i t2 = take i t1 ++ [tempoNitro ((!!) t1 i) t2] ++ drop (i+1) t1

---------------------------------------------------------------------------------------------------

{-
    Funções mais pequenas no entanto úteis e usadas como auxiliares várias vezes. 
-}

-- | Calcular ângulo sabendo coordenadas cartesianas.

calcAngulo :: Velocidade -> Double
calcAngulo (x,y) | (x == 0) && (y == 0) = 0
                 | (x == 0) && (y > 0) = -pi/2
                 | (x == 0) && (y < 0) = pi/2
                 | (x < 0) && (y < 0) = pi/2 + atan (y/x)
                 | (x < 0) && (y > 0) = atan (y/x) - pi/2
                 | (x < 0) && (y == 0) = -pi
                 | (x > 0) && (y == 0) = pi
                 | (x > 0) && (y > 0) = -atan (y/x)
                 | (x > 0) && (y < 0) = -atan (y/x)

-- | Calcula a norma de um vetor.

norma :: Ponto -> Double
norma (x,y) = sqrt (x^2+y^2)

-- | Transforma degrees em radianos. 

toRad :: Double -> Double
toRad x = (x*pi)/180

-- | Transforma coordenadas polares em cartesianas. 

toCartesiano :: Ponto -> Ponto
toCartesiano (x,y) = (x*cos y,-(x*sin y))

-- | Sabendo o tabuleiro e a posição atual, testar se a peça nessa posição é uma rampa.

testaRampa :: Tabuleiro -> Posicao -> Bool
testaRampa t (m,n) = tipo ((!!) ((!!) t n) m) == Rampa Norte || tipo ((!!) ((!!) t n) m) == Rampa Oeste || tipo ((!!) ((!!) t n) m) == Rampa Sul || tipo ((!!) ((!!) t n) m) == Rampa Este

-- | Converte Ponto em Posicao.

pontoToPos :: Ponto -> Posicao
pontoToPos (x,y) = (floor x, floor y)

-- | Extrai a velocidade de um carro.

extraiVelocidade :: Carro -> Velocidade
extraiVelocidade (Carro p d (m,n)) = (m,n)

-- | Saca a peça de um tabuleiro sabendo o ponto.

whatPeca :: Tabuleiro -> Ponto -> Peca
whatPeca tab (m,n) = ((!!) ((!!) tab (floor n)) (floor m))

-- | Da ação, saca o nitro.

extraiNitro :: Acao -> Maybe Int
extraiNitro (Acao a tra e d nitro) = nitro

-- | De um carro, saca o ponto.

extraiPos :: Carro -> Ponto
extraiPos (Carro (m,n) dir (vx,vy)) = (m,n)

-- | Tem a mesma utilidade da função take do prelude só que usada em lista de listas.

takeListaLista :: Int -> [[Posicao]] -> [[Posicao]]
takeListaLista _ [] = []
takeListaLista 0 l = []
takeListaLista 1 (x: _) = [x]
takeListaLista m (x:xs) = x : takeListaLista (m - 1) xs

-- | Tem a mesma utilidade da função drop do prelude só que usada em lista de listas.

dropListaLista :: Int -> [[Posicao]] -> [[Posicao]]
dropListaLista _ [] = []
dropListaLista 0 l = l
dropListaLista 1 (_:xs) = xs
dropListaLista m (_:xs) = dropListaLista (m - 1) xs

-- | Tem a mesma utilidade da função ++ do prelude só que usada em lista de listas.

(+++) :: [[Posicao]] -> [[Posicao]] -> [[Posicao]]
(+++) []     ys = ys
(+++) (x:xs) ys = x : xs ++ ys

-- | Extrair o tipo de uma peça.

tipo :: Peca -> Tipo
tipo (Peca x y) = x

---------------------------------------------------------------------------------------------------