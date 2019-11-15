#All of the code looking at the fish catches data



#packages used

library(dplyr)
library(ggplot2)
library(tidyverse)

#All of the data from the data frame found online
all_data<-read.csv("Raw_Data/fish_catches.csv")

#Finding the sum of catch for years 2014, 2010, and 2006 (in that order)
#Finding sums for 22 countries

#Belgium catches
BE<-filter(all_data,Country=="BE")
sum(BE[,5])
sum(BE[,9])
sum(BE[,13])

#Germany catches
DE<-filter(all_data,Country=="DE")
sum(DE[,5])
sum(DE[,9])
sum(DE[,13])

#Denmark catches
DK<-filter(all_data,Country=="DK")
sum(DK[,5])
sum(DK[,9])
sum(DK[,13])

#Estonia catches
EE<-filter(all_data,Country=="EE")
sum(EE[,5])
sum(EE[,9])
sum(EE[,13])

#Spain catches
ES<-filter(all_data,Country=="ES")
sum(ES[,5])
sum(ES[,9])
sum(ES[,13])

#Finland catches
FI<-filter(all_data,Country=="FI")
sum(FI[,5])
sum(FI[,9])
sum(FI[,13])

#Faroe Islands catches
FO<-filter(all_data,Country=="FO")
sum(FO[,5])
sum(FO[,9])
sum(FO[,13])

#France Catches
FR<-filter(all_data,Country=="FR")
sum(FR[,5])
sum(FR[,9])
sum(FR[,13])

#UK (Chanel Island Guersney) catches
GG<-filter(all_data,Country=="GG")
sum(GG[,5])
sum(GG[,9])
sum(GG[,13])

#Greenland catches
GL<-filter(all_data,Country=="GL")
sum(GL[,5])
sum(GL[,9])
sum(GL[,13])

#Ireland catches
IE<-filter(all_data,Country=="IE")
sum(IE[,5])
sum(IE[,9])
sum(IE[,13])

#UK (Isle of Man) catches
IM<-filter(all_data,Country=="IM")
sum(IM[,5])
sum(IM[,9])
sum(IM[,13])

#UK (Channel Island Jersey) Catches
JE<-filter(all_data,Country=="JE")
sum(JE[,5])
sum(JE[,9])
sum(JE[,13])

#Lithuania catches
LT<-filter(all_data,Country=="LT")
sum(LT[,5])
sum(LT[,9])
sum(BE[,13])

#Latvia catches
LV<-filter(all_data,Country=="LV")
sum(LV[,5])
sum(LV[,9])
sum(LV[,13])

#Netherlands catches
NL<-filter(all_data,Country=="NL")
sum(NL[,5])
sum(NL[,9])
sum(NL[,13])

#Norway catches
NO<-filter(all_data,Country=="NO")
sum(NO[,5])
sum(NO[,9])
sum(NO[,13])

#Poland catches
PL<-filter(all_data,Country=="PL")
sum(PL[,5])
sum(PL[,9])
sum(PL[,13])

#Portugal catches
PT<-filter(all_data,Country=="PT")
sum(PT[,5])
sum(PT[,9])
sum(PT[,13])

#Russia catches
RU<-filter(all_data,Country=="RU")
sum(RU[,5])
sum(RU[,9])
sum(RU[,13])

#Sweden catches
SE<-filter(all_data,Country=="SE")
sum(SE[,5])
sum(SE[,9])
sum(SE[,13])

#United Kingdom catches
UK<-filter(all_data,Country=="UK")
sum(UK[,5])
sum(UK[,9])
sum(UK[,13])
