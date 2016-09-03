#GVPT 849(392) Lab 01
#Nick Thompson; R-Script
############
# Preamble #
############
rm(list=ls())
cat("\014")
### RESTART R CODE: ###
.rs.restartR()
#Install Packages
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
sum(all_variables$WHITE, na.rm = T)
sum(all_variables$BLACK, na.rm = T)
sum(all_variables$AMERI_ES, na.rm = T)
sum(all_variables$ASIAN, na.rm = T)
sum(all_variables$HAW_PI, na.rm = T)
sum(all_variables$OTHER, na.rm = T)

# Total Population for the Top 10 States
#Create pop_2010 data frame
all_variables %>%
  select(STATE_ABBR,POP_2010,WHITE,BLACK,AMERI_ES,ASIAN,HAW_PI,OTHER) %>%
  arrange(desc(POP_2010)) %>%
  group_by(POP_2010) %>%
  top_n(n=10,wt=STATE_ABBR)

# This does not work because of the "total" variable, but it might
# work with some effort
all_variables %>%
  group_by(POP_2010) %>%
  mutate(total = .N) %>%
  group_by(WHITE,BLACK, AMERI_ES, ASIAN, HAW_PI,OTHER) %>%
  summarise(n=n()) %>%
  mutate(rel.freq= n/total)



# Deleted end Notes for update 2016-09-03 16:13