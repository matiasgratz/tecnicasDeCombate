module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "poder" $ do
    it "Es el poder del golpe 15*Golpe" $ do
      poder 10 `shouldBe` 150
  
  describe "fortaleza" $ do
    it "Es la fortaleza del golpe (2*) . length" $ do
      fortaleza "hola" `shouldBe` 8
  
  describe "presionGolpe" $ do
    it "presionGolpe 200 horas sobre bolsa de entrenamiento" $ do
     round (presionGolpe 200 "bolsa de entrenamiento") `shouldBe` 68
  
  describe "gomuGomu" $ do
    it "gomugomu 180 sobre bolsa de entrenamiento" $ do
     round (presionGolpe 180 "bolsa de entrenamiento") `shouldBe` 61
  describe "normalesConsecutivos" $ do
    it "normalesConsecutivos 240 sobre bolsa de entrenamiento" $ do
     round (presionGolpe 240 "bolsa de entrenamiento") `shouldBe` 81  
  
  describe "objetivoDificil" $ do
    it "objetivo es Dificil si gomuGomu ejerce presion < 100 sobre bolsa de entrenamiento" $ do
      objetivoDificil "bolsa de entrenamiento" `shouldBe` True
  describe "objetivoDificil" $ do
    it "objetivo no es Dificil si gomuGomu ejerce presion > 100 sobre puf" $ do
      objetivoDificil "puf" `shouldBe` False

  describe "objetivoAccesible" $ do
    it "objetivo es Accesible si la presion de normalesConsecutivos esta entre 200 y 400 estando focalizado el objetivo" $ do
      objetivoAccesible "bolsa de entrenamiento" `shouldBe` True
  describe "objetivoAccesible" $ do
    it "objetivo no es Accesible si la presion de normalesConsecutivos esta por fuera de 200 y 400 estando focalizado el objetivo" $ do
      objetivoAccesible "puf" `shouldBe` False            