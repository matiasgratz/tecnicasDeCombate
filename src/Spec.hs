module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "poder" $ do
    it "Es el poder de un golpe" $ do
      poder 10 `shouldBe` 150
  
  describe "fortaleza" $ do
    it "Es la fortaleza de un golpe (2*) . length" $ do
      fortaleza "hola" `shouldBe` 8
  
  describe "presionGolpe" $ do
    it "presion de un Golpe" $ do
     round (presionGolpe 200 "bolsa de entrenamiento") `shouldBe` 68
  
  describe "gomuGomu" $ do
    it "presion de gomugomu" $ do
     round (presionGolpe 180 "bolsa de entrenamiento") `shouldBe` 61
  describe "normalesConsecutivos" $ do
    it "presion de normalesConsecutivos" $ do
     round (presionGolpe 240 "bolsa de entrenamiento") `shouldBe` 81  
  
  describe "objetivoDificil" $ do
    it "objetivo es Dificil" $ do
      objetivoDificil "bolsa de entrenamiento" `shouldBe` True
  describe "objetivoDificil" $ do
    it "objetivo no es Dificil" $ do
      objetivoDificil "puf" `shouldBe` False

  describe "objetivoAccesible" $ do
    it "objetivo es Accesible" $ do
      objetivoAccesible "bolsa de entrenamiento" `shouldBe` True
  describe "objetivoAccesible" $ do
    it "objetivo no es Accesible" $ do
      objetivoAccesible "puf" `shouldBe` False            