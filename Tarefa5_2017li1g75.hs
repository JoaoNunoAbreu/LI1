{-|
Module      : Tarefa4_2017li1g75
Description : Módulo da Tarefa 4 para LI1 17/18

Módulo para a realização da Tarefa 4 de LI1 em 2017/18.
-}
module Main where

import LI11718
import Tarefa1_2017li1g75
import Tarefa2_2017li1g75
import Tarefa4_2017li1g75
import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
import GHC.Float 

fr :: Int
fr = 60

type Estado = (Int,[Picture],Jogo,Int,Acao,Int,[Picture],[(Picture,Posicao)]) --2º int: identificador do carro que vai andar


main :: IO ()
main = do menu1 <- loadBMP "menu1.bmp"
          menu2 <- loadBMP "menu2.bmp"
          selcarro <- loadBMP "selecionarcarro.bmp"
          carro1 <- loadBMP "carro1.bmp"
          carro2 <- loadBMP "carro2.bmp"
          carro3 <- loadBMP "carro3.bmp"
          carro4 <- loadBMP "carro4.bmp"
          carro5 <- loadBMP "carro5.bmp"
          carro6 <- loadBMP "carro6.bmp"

--          loa0 <- loadBMP "Loading0.bmp"
--          loa25 <- loadBMP "Loading25.bmp"
--          loa50 <- loadBMP "Loading50.bmp"
--          loa75 <- loadBMP "Loading75.bmp"
--          loa100 <- loadBMP "Loading100.bmp"

          lava <- loadBMP "lava.bmp"

          rectaVertical0 <- loadBMP "rectaVertical0.bmp"
          rectaVertical1 <- loadBMP "rectaVertical1.bmp"
          rectaVertical2 <- loadBMP "rectaVertical2.bmp"
          rectaVertical3 <- loadBMP "rectaVertical3.bmp"
          rectaHorizontal0 <- loadBMP "rectaHorizontal0.bmp"
          rectaHorizontal1 <- loadBMP "rectaHorizontal1.bmp"
          rectaHorizontal2 <- loadBMP "rectaHorizontal2.bmp"
          rectaHorizontal3 <- loadBMP "rectaHorizontal3.bmp"

          curvaNorte0 <- loadBMP "curvaNorte0.bmp"
          curvaNorte1 <- loadBMP "curvaNorte1.bmp"
          curvaNorte2 <- loadBMP "curvaNorte2.bmp"
          curvaNorte3 <- loadBMP "curvaNorte3.bmp"
          curvaSul0 <- loadBMP "curvaSul0.bmp"
          curvaSul1 <- loadBMP "curvaSul1.bmp"
          curvaSul2 <- loadBMP "curvaSul2.bmp"
          curvaSul3 <- loadBMP "curvaSul3.bmp"
          curvaEste0 <- loadBMP "curvaEste0.bmp"
          curvaEste1 <- loadBMP "curvaEste1.bmp"
          curvaEste2 <- loadBMP "curvaEste2.bmp"
          curvaEste3 <- loadBMP "curvaEste3.bmp"
          curvaOeste0 <- loadBMP "curvaOeste0.bmp"
          curvaOeste1 <- loadBMP "curvaOeste1.bmp"
          curvaOeste2 <- loadBMP "curvaOeste2.bmp"
          curvaOeste3 <- loadBMP "curvaOeste3.bmp"

          rampaNorte0 <- loadBMP "rampaNorte0.bmp"
          rampaNorte1 <- loadBMP "rampaNorte1.bmp"
          rampaNorte2 <- loadBMP "rampaNorte2.bmp"
          rampaNorte3 <- loadBMP "rampaNorte3.bmp"
          rampaSul0 <- loadBMP "rampaSul0.bmp"
          rampaSul1 <- loadBMP "rampaSul1.bmp"
          rampaSul2 <- loadBMP "rampaSul2.bmp"
          rampaSul3 <- loadBMP "rampaSul3.bmp"
          rampaEste0 <- loadBMP "rampaEste0.bmp"
          rampaEste1 <- loadBMP "rampaEste1.bmp"
          rampaEste2 <- loadBMP "rampaEste2.bmp"
          rampaEste3 <- loadBMP "rampaEste3.bmp"
          rampaOeste0 <- loadBMP "rampaOeste0.bmp"
          rampaOeste1 <- loadBMP "rampaOeste1.bmp"
          rampaOeste2 <- loadBMP "rampaOeste2.bmp"
          rampaOeste3 <- loadBMP "rampaOeste3.bmp"

          play ecraMenu black 60 (estadoMenuInicial [menu1,menu2,selcarro] [carro1,carro2,carro3,carro4,carro5,carro6] [lava,rectaVertical0,rectaVertical1,rectaVertical2,rectaVertical3,rectaHorizontal0,rectaHorizontal1,rectaHorizontal2,rectaHorizontal3,curvaNorte0,curvaNorte1,curvaNorte2,curvaNorte3,curvaSul0,curvaSul1,curvaSul2,curvaSul3,curvaEste0,curvaEste1,curvaEste2,curvaEste3,curvaOeste0,curvaOeste1,curvaOeste2,curvaOeste3,rampaNorte0,rampaNorte1,rampaNorte2,rampaNorte3,rampaSul0,rampaSul1,rampaSul2,rampaSul3,rampaEste0,rampaEste1,rampaEste2,rampaEste3,rampaOeste0,rampaOeste1,rampaOeste2,rampaOeste3]) desenha reageTeclas reageTempo


ecraMenu :: Display
ecraMenu = InWindow "Micro Machines" 
                    (1366,768) 
                    (0,0)



estadoMenuInicial :: [Picture] -> [Picture] -> [Picture] -> Estado
estadoMenuInicial xs ys zs = (0
                      , xs
                      , (Jogo {mapa = Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]
                                    , pista  = Propriedades {k_atrito = 2,k_pneus = 3,k_acel = 4,k_peso = 2,k_nitro = 15,k_roda = 180}
                                    , carros = [Carro {posicao = (2,1),direcao = 0,velocidade = (1,1)}] 
                                    , nitros  = [0] 
                                    , historico = [[(2,1)]] })
                      , 1
                      , Acao {acelerar = False,travar = False,esquerda = False,direita = False,nitro = Nothing}
                      , 0
                      , ys
                      , (picturesPosicoes zs (juntarOris (mapaToPePoOri (Mapa ((2,1),Este) [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]]) (2,1) Este) [] 
                                    (pePoToPePoOri (tabToPePo [[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Norte) (-1),Peca Recta (-1),Peca (Curva Este) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Recta (-1),Peca Lava 0,Peca Recta (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca (Curva Oeste) (-1),Peca Recta (-1),Peca (Curva Sul) (-1),Peca Lava 0]
                                    ,[Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0,Peca Lava 0]] (0,0))))))

------------------------------------------------------




desenha :: Estado -> Picture
desenha (x, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) | x<3 = Pictures [Scale (0.17) (0.17) (Translate 0 0 (e !! (x)))]
                                    | otherwise = Pictures ({-[(Scale (0.17) (0.17) (Translate ((fst(posIniMapa m))-384) ((fst(posIniMapa m))-384) (b !! (j-1))))]++-}Scale (0.08) (0.08) (Translate ((fst(head(posPicTab tab)))-384) ((snd(head(posPicTab tab)))-384) (fst(head tab))) : desenhaTabuleiro (tail tab))

desenhaTabuleiro :: [(Picture,Posicao)] -> [Picture]
desenhaTabuleiro [(pic,(x,y))] = [(Scale (0.08) (0.08) (Translate (fromIntegral(x-384)) (fromIntegral(y-384)) pic))]
desenhaTabuleiro tab = (Scale (0.08) (0.08) (Translate ((fst(head(posPicTab tab)))-384) ((snd(head(posPicTab tab)))-384) (fst(head tab)))) : desenhaTabuleiro (tail tab)






posIniMapa :: Mapa -> (Float,Float)
posIniMapa (Mapa ((x,y),z) tab) = (fromIntegral x,fromIntegral y)

posPicTab :: [(Picture,Posicao)] -> [(Float,Float)]
posPicTab ((pic,(x,y)):xs) = (fromIntegral x,fromIntegral y):posPicTab xs


--desenha (1, [menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = Pictures [Scale (0.17) (0.17) (Translate 0 0 menu2)]
--desenha (2, [menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = Pictures [Scale (0.17) (0.17) (Translate 0 0 selcarro)]
--desenha (4, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = Pictures [Scale (0.17) (0.17) (Translate (fst(head(c !! ic))) (snd(head(c !! ic))) (b !! j))]

------------------------------------------------------

reageTeclas :: Event -> Estado -> Estado
reageTeclas (EventKey (SpecialKey KeyDown) Down _ _)  (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyLeft) Down _ _)  (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyUp) Down _ _)    (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyLeft) Down _ _)  (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyEnter) Down _ _) (0, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyEnter) Down _ _) (1, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (9, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)

reageTeclas (EventKey (SpecialKey KeyF1) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),1,b,tab)
reageTeclas (EventKey (SpecialKey KeyF2) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),2,b,tab)
reageTeclas (EventKey (SpecialKey KeyF3) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),3,b,tab)
reageTeclas (EventKey (SpecialKey KeyF4) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),4,b,tab)
reageTeclas (EventKey (SpecialKey KeyF5) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),5,b,tab)
reageTeclas (EventKey (SpecialKey KeyF6) Down _ _)    (2, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao u d a r l),6,b,tab)

reageTeclas (EventKey (SpecialKey KeyUp) Down _ _)    (4, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao True False False False l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyDown) Down _ _)  (4, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao False True False False l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (4, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao False False True False l),j,b,tab)
reageTeclas (EventKey (SpecialKey KeyLeft) Down _ _)  (4, e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (4,e,(Jogo m p c n h),ic,(Acao False False False True l),j,b,tab)

reageTeclas _ s = s

------------------------------------------------------

reageTempo :: Float -> Estado -> Estado
reageTempo t (0,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (0,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTempo t (1,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (1,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTempo t (2,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab) = (2,e,(Jogo m p c n h),ic,(Acao u d a r l),j,b,tab)
reageTempo t (4,e,(Jogo m p c n h),ic,(Acao False False False False l),j,b,tab)= (4,e,(Jogo m p c n h),ic,(Acao False False False False l),j,b,tab)
reageTempo t (4,e,(Jogo m p c n h),ic,(Acao True False False False l),j,b,tab) = (4,e,(atualiza (float2Double t) (Jogo m p c n h) ic (Acao True False False False l)),ic,(Acao False False False False l),j,b,tab)
reageTempo t (4,e,(Jogo m p c n h),ic,(Acao False True False False l),j,b,tab) = (4,e,(atualiza (float2Double t) (Jogo m p c n h) ic (Acao False True False False l)),ic,(Acao False False False False l),j,b,tab)
reageTempo t (4,e,(Jogo m p c n h),ic,(Acao False False True False l),j,b,tab) = (4,e,(atualiza (float2Double t) (Jogo m p c n h) ic (Acao False False True False l)),ic,(Acao False False False False l),j,b,tab)
reageTempo t (4,e,(Jogo m p c n h),ic,(Acao False False False True l),j,b,tab) = (4,e,(atualiza (float2Double t) (Jogo m p c n h) ic (Acao False False False True l)),ic,(Acao False False False False l),j,b,tab)





------------------------------------------------------


altTabuleiro :: Mapa -> Int
altTabuleiro (Mapa ((x,y),o) tab) = length tab


picturesPosicoes :: [Picture] -> [(Peca,Posicao,Orientacao)] -> [(Picture,Posicao)]
picturesPosicoes zs [] = []
picturesPosicoes zs ((pe,(x,y),ori):xs) | pe == Peca Recta 0 && ori == Norte || ori == Sul  = ((zs !! 1),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta 0 && ori == Este || ori == Oeste = ((zs !! 5),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta 1 && ori == Norte || ori == Sul  = ((zs !! 2),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta 1 && ori == Este || ori == Oeste = ((zs !! 6),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta 2 && ori == Norte || ori == Sul  = ((zs !! 3),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta 2 && ori == Este || ori == Oeste = ((zs !! 7),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta z && ori == Norte || ori == Sul  = ((zs !! 4),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca Recta z && ori == Este || ori == Oeste = ((zs !! 8),(x,y)) : (picturesPosicoes zs xs)

                                        | pe == Peca Lava 0 = ((zs !! 0),(x,y)) : (picturesPosicoes zs xs)

                                        | pe == Peca (Curva Norte) 0 = ((zs !! 9),(x,y))  : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Norte) 1 = ((zs !! 10),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Norte) 2 = ((zs !! 11),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Norte) z = ((zs !! 12),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Sul) 0   = ((zs !! 13),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Sul) 1   = ((zs !! 14),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Sul) 2   = ((zs !! 15),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Sul) z   = ((zs !! 16),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Este) 0  = ((zs !! 17),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Este) 1  = ((zs !! 18),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Este) 2  = ((zs !! 19),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Este) z  = ((zs !! 20),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Oeste) 0 = ((zs !! 21),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Oeste) 1 = ((zs !! 22),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Oeste) 2 = ((zs !! 23),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Curva Oeste) z = ((zs !! 24),(x,y)) : (picturesPosicoes zs xs)

                                        | pe == Peca (Rampa Norte) 0 = ((zs !! 25),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Norte) 1 = ((zs !! 26),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Norte) 2 = ((zs !! 27),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Norte) z = ((zs !! 28),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Sul) 0   = ((zs !! 29),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Sul) 1   = ((zs !! 30),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Sul) 2   = ((zs !! 31),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Sul) z   = ((zs !! 32),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Este) 0  = ((zs !! 33),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Este) 1  = ((zs !! 34),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Este) 2  = ((zs !! 35),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Este) z  = ((zs !! 36),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Oeste) 0 = ((zs !! 37),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Oeste) 1 = ((zs !! 38),(x,y)) : (picturesPosicoes zs xs)
                                        | pe == Peca (Rampa Oeste) 2 = ((zs !! 39),(x,y)) : (picturesPosicoes zs xs)
                                        | otherwise                  = ((zs !! 40),(x,y)) : (picturesPosicoes zs xs)
                                       where z = num z

num :: Int -> Int
num z | z == 3 = 3
      | z == 4 = 4
      | z == 5 = 5
      | z == 6 = 6
      | z == 7 = 7
      | z == 8 = 8
      | otherwise = 9

---------------------------------AUXILIARES-------------------------------------

tabToPePo :: Tabuleiro -> Posicao -> [(Peca,Posicao)]
tabToPePo [x] (a,b) = pecay2 x (a,b)
tabToPePo (x:xs) (a,b) = pecay2 x (a,b) ++ tabToPePo xs (a,b+1)

pecay2 :: [Peca] -> Posicao -> [(Peca,Posicao)]
pecay2 [x] (a,b) = [pecax2 x (a,b)]
pecay2 (x:xs) (a,b) = pecax2 x (a,b) : pecay2 xs (a+1,b)

pecax2 :: Peca -> Posicao -> (Peca,Posicao)
pecax2 x y = (x,y)

--

pePoToPePoOri :: [(Peca,Posicao)] -> [(Peca,Posicao,Orientacao)] --se em vez de tirar meter uma orinetacao random
pePoToPePoOri [(pe,(x,y))] = [(pe,(x,y),Norte)]
pePoToPePoOri ((pe,(x,y)):xs) = (pe,(x,y),Norte): pePoToPePoOri xs

--

mapaToPePoOri :: Mapa -> Posicao -> Orientacao -> [(Peca,Posicao,Orientacao)]
mapaToPePoOri (Mapa ((m,n),o) tab) (a,b) o1 = if qualPeca tab (proxPos peca (m,n) o) == Peca Lava 0
  then []
  else if (proxPos peca (m,n) o) == (a,b) && (proxOri peca o) == o1
    then [(peca,(m,n),proxOri peca o)]
    else (peca,(m,n),proxOri peca o) : mapaToPePoOri (Mapa ((proxPos peca (m,n) o),(proxOri peca o)) tab) (a,b) o1  
    where peca = ((!!) ((!!) tab n) m)

--

juntarOris :: [(Peca,Posicao,Orientacao)] -> [(Peca,Posicao,Orientacao)] -> [(Peca,Posicao,Orientacao)] -> [(Peca,Posicao,Orientacao)]
juntarOris []                    []               ((pe2,(x2,y2),ori2):xs2)  = ((pe2,(x2,y2),ori2):xs2)
juntarOris [(pe,(x,y),ori)]    ((p,(a,b),o):bs) [(pe2,(x2,y2),ori2)]        = if (pe,(x,y)) == (pe2,(x2,y2))
                                                                            then ((p,(a,b),o):bs)++[(pe,(x,y),ori)]
                                                                            else ((p,(a,b),o):bs)++[(pe2,(x2,y2),ori2)]
juntarOris ((pe,(x,y),ori):xs)   []               ((pe2,(x2,y2),ori2):xs2)  = if (pe,(x,y)) == (pe2,(x2,y2))
                                                                            then (juntarOris xs [] ([(pe,(x,y),ori)]++xs2))
                                                                            else juntarOris ((pe,(x,y),ori):xs) [(pe2,(x2,y2),ori2)] (xs2)
juntarOris ((pe,(x,y),ori):xs) ((p,(a,b),o):bs) ((pe2,(x2,y2),ori2):xs2)    = if (pe,(x,y)) == (pe2,(x2,y2))
                                                                            then (juntarOris xs [] (((p,(a,b),o):bs)++[(pe,(x,y),ori)]++xs2))
                                                                            else juntarOris ((pe,(x,y),ori):xs) (((p,(a,b),o):bs)++[(pe2,(x2,y2),ori2)]) (xs2)
juntarOris ((pe,(x,y),ori):xs) ((p,(a,b),o):bs) [(pe2,(x2,y2),ori2)]        = if (pe,(x,y)) == (pe2,(x2,y2))
                                                                            then (juntarOris xs [] (((p,(a,b),o):bs)++[(pe,(x,y),ori)]))
                                                                            else []

qualPeca :: Tabuleiro -> Posicao -> Peca
qualPeca t (m,n) = ((!!) ((!!) t n) m)


testaIntersecao :: Mapa -> Posicao -> Bool
testaIntersecao m p = testaIntersecaoLista m (posicoesAoRedor p)

testaIntersecaoLista :: Mapa -> [Posicao] -> Bool
testaIntersecaoLista (Mapa _ tab) [] = True
testaIntersecaoLista (Mapa x tab) (h:t) = if whatPeca1 (Mapa x tab) h /= Peca Lava 0
  then testaIntersecaoLista (Mapa x tab) t
  else False

posicoesAoRedor :: Posicao -> [Posicao]
posicoesAoRedor (0,_) = []
posicoesAoRedor (_,0) = []
posicoesAoRedor (m,n) = [(m+1,n),(m-1,n),(m,n+1),(m,n-1)]

whatPeca1 :: Mapa -> Posicao -> Peca
whatPeca1 (Mapa _ tab) (m,n) = ((!!) ((!!) tab n) m)

testaIntersecaoAux :: Tabuleiro -> [Peca] -> Posicao -> [Peca]
testaIntersecaoAux tab [p] (x,y) = if elem (Peca Lava 0) (pecasAVolta tab (x,y))
  then [p]
  else [Peca Lava 9]
testaIntersecaoAux tab (p:ps) (x,y) = if elem (Peca Lava 0) (pecasAVolta tab (x,y))
  then (p:(testaIntersecaoAux tab ps ((x+1),y)))
  else ((Peca Lava 9):(testaIntersecaoAux tab ps ((x+1),y)))

---------------------------------
{-
0 - lava
1 - rectaVertical0
2 - rectaVertical1
3 - rectaVertical2
4 - rectaVertical3
5 - rectaHorizontal0
6 - rectaHorizontal1
7 - rectaHorizontal2
8 - rectaHorizontal3
9 - curvaNorte0
10 - curvaNorte1
11 - curvaNorte2
12 - curvaNorte3
13 - curvaSul0
14 - curvaSul1
15 - curvaSul2
15 - curvaSul3
17 - curvaEste0
18 - curvaEste1
19 - curvaEste2
20 - curvaEste3
21 - curvaOeste0
22 - curvaOeste1
23 - curvaOeste2
24 - curvaOeste3
25 - rampaNorte0
26 - rampaNorte1
27 - rampaNorte2
28 - rampaNorte3
29 - rampaSul0
30 - rampaSul1
31 - rampaSul2
32 - rampaSul3
33 - rampaEste0
34 - rampaEste1
35 - rampaEste2
36 - rampaEste3
37 - rampaOeste0
38 - rampaOeste1
39 - rampaOeste2
40 - rampaOeste3
-}
---------------------------------

--reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (31,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6]) = (32,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6])
--reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (32,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6]) = (33,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6])
--reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (33,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6]) = (34,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6])
--reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (34,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6]) = (35,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6])
--reageTeclas (EventKey (SpecialKey KeyRight) Down _ _) (35,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6]) = (4, [menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,[carro1,carro2,carro3,carro4,carro5,carro6])


--reageTempo t (33,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = (33,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b)
--reageTempo t (34,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = (34,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b)
--reageTempo t (35,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = (35,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b)


--desenha (31,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = Pictures [Scale (0.17) (0.17) (Translate 0 0 loa0)]
--desenha (32,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = Pictures [Scale (0.17) (0.17) (Translate 0 0 loa25)]
--desenha (33,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = Pictures [Scale (0.17) (0.17) (Translate 0 0 loa50)]
--desenha (34,[menu1,menu2,selcarro,loa0,loa25,loa50,loa75,loa100],(Jogo m p c n h),ic,(Acao u d a r l),j,b) = Pictures [Scale (0.17) (0.17) (Translate 0 0 loa75)]
