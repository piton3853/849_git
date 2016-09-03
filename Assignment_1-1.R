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


bind_cols(Lab01_2,Lab01_3)

with(CrossTable(terrain, ins.win2, prop.c=F, prop.r = T, prop.t = F, prop.chisq = F)); df.swampy

sum(Lab01$WHITE)

#New Typing

#NEw Typing 2
