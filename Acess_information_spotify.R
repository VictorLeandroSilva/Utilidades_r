
# ----------------------------------------------------------
# autor: Victor Leandro ------------------------------------
# Inst: Universidade Federal Rural de Pernambuco -----------
# Date: 09 de setembro de 2023 -----------------------------
# Update: xx -----------------------------------------------
# e-mail: leo.silva.vls@gmail.com --------------------------
# ----------------------------------------------------------

#dir
setwd("C:/Users/victo/Downloads")
getwd()
dir()

# Library'
library(spotifyr)
library(tidyverse)

# Em primeiro lugar, crie uma conta Dev com o Spotify para acessr à sua API Web aqui. 
# https://developer.spotify.com/
# Isso vai te dar seu ID de cliente e senha. Uma vez que você os tenha, 
# você pode puxar seu token de acesso para o R com get_spotify_access_token().

Sys.setenv(SPOTIFY_CLIENT_ID = 'xxxxxxxxxxxxxxxxxxxxxx')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'xxxxxxxxxxxxxxxxxxxxxxxxx')

access_token <- get_spotify_access_token()

# Fluxo de código de autorização
# Para determinadas funções e aplicações, é necessário iniciar sessão como 
# utilizador do Spotify. Para fazer isso, seu aplicativo Spotify Developer 
# precisa ter uma url de retorno de chamada. Você pode definir isso para o 
# que quiser que funcione com seu aplicativo, mas uma boa opção padrão é 
# http://localhost:1410/  Para obter mais informações sobre autorização, 
# visite o Guia oficial do desenvolvedor do Spotify. https://developer.spotify.com/documentation/web-api/concepts/authorization

Caetano <- get_artist_audio_features('Caetano Veloso')
Gil <- get_artist_audio_features("Gilberto Gil")
Beyonce <- get_artist_audio_features("Beyoncé")
Melody <- get_artist_audio_features("Melody")
Pablo <- get_artist_audio_features("Pablo Vitta")
Xande <- get_artist_audio_features("Xande de Pilares")
LP <- get_artist_audio_features("Linkin Park")
Dead_fish <- get_artist_audio_features("Dead Fish")
Swift <- get_artist_audio_features("Taylor Swift")

df_final <- rbind(Caetano,Gil,Beyonce,Melody,Pablo,Xande,LP,Dead_fish,Swift)

write_csv(df_final, "dataset_Spotify.csv")
