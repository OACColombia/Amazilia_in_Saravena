#Amazilia tzacatl Map
library(dismo)
tzacatl=gbif("amazilia","tzacatl*",geo=F)
colnames(tzacatl)
tzgeo<-subset(tzacatl,!is.na(lon) & !is.na(lat))
tzgeo[1:4,c(1:5,7:10)]
write.csv(tzgeo,file="Atzacatl_gbif.csv")
library(maptools)
data(wrld_simpl)
plot(wrld_simpl, xlim=c(-100,-50),ylim=c(-10,20), axes=T,col="light gray")
points(tzgeo$lon,tzgeo$lat,col='white',pch=20,cex=1)
