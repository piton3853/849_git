#GVPT 849(392) Lab 01
#Nick Thompson; R-Script
############
# Preamble #
############
rm(list=ls())
cat("\014")
### RESTART R CODE: ###
#.rs.restartR()
savehistory(file="GVPT849(392).Rhistory")
if(T){
  setwd("~/Documents/data/GVPT849(392)")
  library(dplyr)
  library(ggplot2)
  library(gmodels)
  library(stargazer)
  library(data.table)
  library(tidyr)
}
if(T){
  Lab01 <- read.csv("Export_Output_TableToExcel.csv")
  save(Lab01, file = "Export_Output_TableToExcel.RDdata")
  load("Export_Output_TableToExcel.RDdata")
  Lab01_2 <- Lab01 %>%
    select(POP_2010, WHITE:HISPANIC)
  save(Lab01_2, file = "Export_Output_TableToExcel_2.RData")
  load("Export_Output_TableToExcel_2.RData")
  Lab01_b <- read.csv("Export_Output2_TableToExcel.csv")
  save(Lab01_b, file = "Export_Output2_TableToExcel.RData")
  load("Export_Output2_TableToExcel.RData")
}


Lab01_2 %>%
  gather(race, state_pop, WHITE:HISPANIC)

bind_cols(Lab01_2,Lab01_3)

with(CrossTable(terrain, ins.win2, prop.c=F, prop.r = T, prop.t = F, prop.chisq = F)); df.swampy

sum(Lab01$WHITE)