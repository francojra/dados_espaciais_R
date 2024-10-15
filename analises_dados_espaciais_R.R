
# Dados espaciais no R ---------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 13/10/2024 -------------------------------------------------------------------------------------------------------------------------

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

library(raster) 
library(tidyverse)
library(sf)
library(geobr) 

# Mapa com a função raster -----------------------------------------------------------------------------------------------------------------

raster <- raster("00S48_DD.tif")
plot(raster)

# Mapa com pacote geobr --------------------------------------------------------------------------------------------------------------------

dados_biomas <- geobr::read_biomes()
view(dados_biomas)

dados_amazonia <- geobr::read_amazon()
view(dados_amazonia)

dados_estados <- geobr::read_state()
view(dados_estados)

dados_escolas <- geobr::read_schools()
view(dados_escolas)
