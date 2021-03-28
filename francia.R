library(dplyr)
library(ggplot2)
library(sf)
library(raster)

#HOLA

# Asignar directorio de trabajo -------------------------------------------

setwd("C:/Users/Nixon/Dropbox/DOCTORADO/Computational and exploratory methods in statistics/Proyecto")

# Cargar data -------------------------------------------------------------

fr=getData(country='France',level=2) #france's shapes

accidentes=
  read.csv("caracteristics.csv") %>% 
  mutate(long=as.numeric(long)/100000,lat=as.numeric(lat)/100000)

accidentes.xy=
  accidentes %>% filter(lat!=0 & long!=0) %>% 
  filter(row_number()<1000)

# Graficos ----------------------------------------------------------------

ggplot(fr %>% st_as_sf) + geom_sf(aes(fill=GID_1)) +
  geom_point(data=accidentes.xy, aes(x=long,y=lat)) +
  scale_fill_discrete(guide=NULL)

#trabajo
#1.- Crear una variable: date.
#2.- Concatenar de Holidays alguna festividad, sino colocar NA.
#3.-
 

