library(stargazer)
library(pander)
Democratic <- c(71048,540451)
vote_total <- c(133467,1019887)
pre_join <- c("Yes","No")
post_join <- c("No","Yes")
percent_dem <- Democratic / vote_total
df <- data.frame(Democratic, vote_total, percent_dem,pre_join,post_join)
stargazer(df, mean.sd = F,type = 'text',flip = T)

Democratic2 <- c(2014,1300593)
move_total <- c(133467,1019887)
pre_join <- c("Yes","No")
post_join <- c("No","Yes")
percent_dem <- Democratic / vote_total
df <- data.frame(Democratic, vote_total, percent_dem,pre_join,post_join)
stargazer(df, mean.sd = F,type = 'text',flip = T)



df2 <- matrix(c(71048,540451,133467,1019887),ncol=3,byrow = 2)
colnames(df2,do.NULL = F)
colnames(df2) <- c("Field","Pre-Join","Post-Join")
rownames(df2) <- c("Democratic","Vote Totals","Percentages")
df2 <- as.table(df2)
df2

devtools::install_github('Rapporter/pander')