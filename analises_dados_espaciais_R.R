
# Dados espaciais no R ---------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 13/10/2024 -------------------------------------------------------------------------------------------------------------------------
# Referência: https://www.youtube.com/watch?v=0ep7AM793zg ----------------------------------------------------------------------------------


# Conceitos --------------------------------------------------------------------------------------------------------------------------------

## O que é um raster?

## Um raster é um banco de dados organizado como uma malha retangular 
## subdividida em células ou pixels de mesmo tamanho, organizada em 
## linhas e colunas, nas quais cada célula pode armazenar um ou mais 
## valores. Os rasters são imagens de satélite, fotografias aéreas 
## digitais ou mapas digitalizados.

## É necessário salvar os dados espaciais na pasta do computador.
## Dados georreferenciados são os dados do tipo tiff.
## Um TIFF é um arquivo de imagem, portanto, ele armazena dados 
## fotográficos e gráficos.

# Carregar pacotes -------------------------------------------------------------------------------------------------------------------------

library(raster) # Ler dados espaciais
library(sp)
library(sf)

raster <- raster("00S48_DD.tif")
plot(raster)

