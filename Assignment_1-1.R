#GVPT 849(392) Lab 01
#Nick Thompson; R-Script
############
# Preamble #
############
rm(list=ls())
cat("\014")
if(T){
### RESTART R CODE: ###
#.rs.restartR()
#Install Packages
}
if(F){
  install.packages("dplyr")
  install.packages("ggplot2")
  install.packages("gmodels")
  install.packages("stargazer")
  install.packages("data.table")
  install.packages("tidyr")
  install.packages("data.table")
  install.packages("reshape2")
}
#Load Libraries
if(T){
  library(dplyr)
  library(ggplot2)
  library(gmodels)
  library(stargazer)
  library(data.table)
  library(tidyr)
  library(data.table)
  library(reshape2)
}
#Set Working directory for Mac
if(T){
  setwd("~/Documents/GitHubRepo/849_git")
  savehistory(file="Assignment_1-1_Thompson.Rhistory")}
#Set Working Directory for Windows
  if(F){
  setwd("C:/R_Git/gvpt849_git")
  savehistory(file="Assignment_1-1_Thompson.Rhistory")
}
#Load Data
  #for Mac
  if(T){
    all_variables <- read.csv("all_variables.csv")
    save(all_variables, file = "all_variables.RData")
    load("all_variables.RData")
  }
  #for Windows
  if(F){
    all_variables <- read.csv("all_variables.csv")
    save(all_variables, file = "all_variables.RData")
    load("all_variables.RData")
  }
# Total Population for each Race
if(T){
whitetotal_sum <- sum(all_variables$WHITE, na.rm = T); whitetotal_sum
blacktotal_sum <- sum(all_variables$BLACK, na.rm = T); blacktotal_sum
ameristotal_sum <- sum(all_variables$AMERI_ES, na.rm = T); ameristotal_sum
asiatotal_sum <- sum(all_variables$ASIAN, na.rm = T); asiatotal_sum
hawaiiantotal_sum <- sum(all_variables$HAW_PI, na.rm = T); hawaiiantotal_sum
othertotal_sum <- sum(all_variables$OTHER, na.rm = T); othertotal_sum
}
# Total Sum Population Sum all of these variables
if(T){
total_pop_sum <- sum(whitetotal_sum + blacktotal_sum + ameristotal_sum + asiatotal_sum + 
      hawaiiantotal_sum + othertotal_sum); total_pop_sum
}
# Total Population for the Top 10 States
#Create pop_2010 data frame
if(T){
top_ten <- all_variables %>%
  select(STATE_ABBR,POP_2010,WHITE,BLACK,AMERI_ES,ASIAN,HAW_PI,OTHER) %>%
  arrange(desc(POP_2010)) %>%
  group_by(POP_2010) %>%
  top_n(n=10,wt=STATE_ABBR) %>%
  filter(POP_2010 > 9535482); top_ten
}
# Sum the vaules for the top 10
if(T){
white10_sum <- sum(top_ten$WHITE); white10_sum
black10_sum <- sum(top_ten$BLACK); black10_sum
ameris10_sum <- sum(top_ten$AMERI_ES); ameris10_sum
asia10_sum <- sum(top_ten$ASIAN); asia10_sum
hawaiian10_sum <- sum(top_ten$HAW_PI); hawaiian10_sum
other10_sum <- sum(top_ten$OTHER); other10_sum
}
# Total Sum Population Sum for the Top 10
if(T){
top_ten_sum <- sum(white10_sum + black10_sum + ameris10_sum + asia10_sum + 
      hawaiian10_sum + other10_sum); top_ten_sum
}
# Find the Percentage of Population by race: 
# 10 most populous states and territories.
if(T){
percentage_white <- white10_sum / whitetotal_sum ; percentage_white * 100
percentage_black <- black10_sum / blacktotal_sum ; percentage_black * 100
percentage_ameris <- ameris10_sum / ameristotal_sum ; percentage_ameris * 100
percentage_asia <- asia10_sum / asiatotal_sum ; percentage_asia * 100
percentage_hawaiian <- hawaiian10_sum / hawaiiantotal_sum ; percentage_hawaiian * 100
percentage_other <- other10_sum / othertotal_sum; percentage_other * 100
}
#Total Population Percentage
(top_ten_sum / total_pop_sum) * 100
# Deleted end Notes for update 2016-09-06 20:30