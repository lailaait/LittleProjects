## LOAD LIBRARIES

library(maptools)
library(rgeos)
library(rgdal)
library(classInt)
library(RColorBrewer)
library(ggplot2)

setwd("C:/Users/Laila/Desktop/MiniProjets")
dat <- read.csv("liste-des-cafes-a-un-euro.csv", header=T, sep=";")

repartition <- table(dat$Arrondissement)
# don't worry, at least 2 per district!

dat$nbcafe <- matrix("NA", nrow =length(dat$Arrondissement), ncol =1)
  
dat$nbcafe <- ifelse(dat$Arrondissement =='75001', 8,
                  ifelse(dat$Arrondissement == '75002', 12,
                  ifelse(dat$Arrondissement == '75003', 5,
                  ifelse(dat$Arrondissement == '75004', 6,
                  ifelse(dat$Arrondissement == '75005', 12,
                  ifelse(dat$Arrondissement == '75006', 4,
                  ifelse(dat$Arrondissement == '75007', 6,
                  ifelse(dat$Arrondissement == '75008', 8,
                  ifelse(dat$Arrondissement == '75009', 7,
                  ifelse(dat$Arrondissement == '75010', 11,
                  ifelse(dat$Arrondissement == '75011', 14,
                  ifelse(dat$Arrondissement == '75012', 12,
                  ifelse(dat$Arrondissement == '75013', 6,
                  ifelse(dat$Arrondissement == '75014', 9,
                  ifelse(dat$Arrondissement == '75015', 19,
                  ifelse(dat$Arrondissement == '75016', 2,
                  ifelse(dat$Arrondissement == '75017', 9,
                  ifelse(dat$Arrondissement =='75018', 18,
                  ifelse(dat$Arrondissement =='75019', 3,
                  ifelse(dat$Arrondissement == '75020', 10, 1)
)    
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)

######## MAKE SOME MAPS

ggplot(dat, aes(x=factor(Arrondissement), y=nbcafe)) +
  geom_bar(stat = "identity", fill="lightblue") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Repartition of number of cafés per arrondissement where coffee costs 1???") +
  xlab("Arrondissement") +
  ylab("Number of cafés") +
  ylim(0, 45)  

library(googleVis)
library(ggmap)

geocodes <- geocode(as.character(dat$Adresse))
geocodes <- round(geocodes, digits = 3)
dat1 <- dat
dat1 <- data.frame(dat1[,1:9],geocodes)

dat1$latlon <- paste(dat1$lat, dat1$lon, sep=':')


myData <- data.frame("localisation"= dat1$latlon, "adresse" = dat1$Nom.du.cafe)
CafeMap <- gvisMap(myData, locationvar = "localisation", tipvar="adresse", 
                     options=list(showTip=TRUE, 
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain'))

plot(CafeMap)
filename = paste("mapcafes.html")
print(CafeMap, file=filename)


filename = "filename.html")
filename = paste("file", i, ".html", sep="")
print(donkeystyle[[i]], file=filename)

}


data(Andrew)

library(ggmap)
library(maps)




AndrewMap <- gvisMap(Andrew, "LatLong" , "Tip", 
                     options=list(showTip=TRUE, 
                                  showLine=TRUE, 
                                  enableScrollWheel=TRUE,
                                  mapType='terrain', 
                                  useMapTypeControl=TRUE))
plot(AndrewMap)

address <- c(
        "Eiffer Tower, France",
        "Facebook Headquarters, Menlo Park, California" )

dat$b <- (dat$Address & dat$Arrondissement)



df <- cbind(address, temp)

map('world')



table(dat$nbcafe, dat$Arrondissement)

# observation 

require(devtools)
install_github('rCharts', 'ramnathv')

