## Plot saídas SiB2 offline
##
##
source("gof_new.R")

##---------------- função para gerar uma tabela com as estatísticas--------
f.table.statistic <- function(dados = df, 
                              obs  = "LE",    
                              var1 = "LE.amalg",  
                              var2 = "LE.def",
                              na.rm=TRUE){
  
  s1 <- as.data.frame(gof_new(sim = dados[,sim1],obs = dados[,obs], na.rm = na.rm))
  s2 <- as.data.frame(gof_new(sim = dados[,sim2],obs = dados[,obs], na.rm = na.rm))
  s <- cbind(s1,s2)
  names(s) <- c(sim1,sim2)
  kable(s)
} # end f.table.statistic


##