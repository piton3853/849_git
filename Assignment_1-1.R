#GVPT 849(392) Lab 01
#Nick Thompson; R-Script
############
# Preamble #
############
rm(list=ls())
cat("\014")
### RESTART R CODE: ###
#.rs.restartR()
#Install Packages
if(F){
install.packages("dplyr")
install.packages("ggplot2")
install.packages("gmodels")
install.packages("stargazer")
install.packages("data.table")
install.packages("tidyr")
}

#Load Libraries
if(T){
  library(dplyr)
  library(ggplot2)
  library(gmodels)
  library(stargazer)
  library(data.table)
  library(tidyr)
}

#Set Working directory for Mac
if(F){
  setwd("~/Documents/")
  savehistory(file="Assignment_1-1_Thompson.Rhistory")}

#Set Working Directory for Windows
if(T){
  setwd("C:/R_Git/gvpt849_git")
  savehistory(file="Assignment_1-1_Thompson.Rhistory")
}


#Load Data
if(T){
  #for Mac
  if(F){
  all_variables <- read.csv("all_variables.csv")
  save(all_variables, file = "all_variables.RDdata")
  load("all_variables.RData")
  }
  #for Windows
  if(T){
  all_variables <- read.csv("all_variables.csv")
  save(all_variables, file = "all_variables.RData")
  load("all_variables.RData")
  }
}

sum(all_variables$WHITE, na.rm = T)
sum(all_variables$BLACK, na.rm = T)
sum(all_variables$AMERI_ES, na.rm = T)
sum(all_variables$ASIAN, na.rm = T)
sum(all_variables$HAW_PI, na.rm = T)
sum(all_variables$OTHER, na.rm = T)

#Create pop_2010 data frame
pop_2010.df <- all_variables %>%
  select(STATE_ABBR,POP_2010,WHITE,BLACK,AMERI_ES,ASIAN,HAW_PI,OTHER) %>%
  arrange(desc(POP_2010)) %>%

  
#create top 10 data frame
top_10.df <- all_variables %>%
  select(STATE_ABBR,POP_2010,WHITE,BLACK,AMERI_ES,ASIAN,HAW_PI,OTHER) %>%
  arrange(desc(POP_2010)) %>%
  filter(POP_2010 >= 9535483) %>%

all_variables %>%
  
  



with(CrossTable(race.df, prop.c=T, prop.r = T, prop.t = T, prop.chisq = T))

sum(Lab01$WHITE)

# Deleted end Notes for update 2016-09-03 15:11
