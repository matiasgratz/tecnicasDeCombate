module Library where
import PdePreludat
doble :: Number -> Number
doble numero = 2*numero
type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas `div` fortaleza objetivo

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length

type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240

objetivoDificil :: Objetivo -> Bool
objetivoDificil = (<100).gomuGomu

objetivoAccesible :: Objetivo -> Bool
objetivoAccesible = estaEntre.normalesConsecutivos.objetivoFocalizado

estaEntre :: Number -> Bool
estaEntre number = number > 200 && number < 400 

objetivoFocalizado :: Objetivo -> Objetivo 
objetivoFocalizado = take 7 