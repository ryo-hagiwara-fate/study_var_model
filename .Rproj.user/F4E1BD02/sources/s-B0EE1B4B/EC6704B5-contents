library(vars)

msci <- read.csv("Datasets/msci.csv",row.names=1)

msci.var<-VAR(msci,p=3)

# 14期先までインパルス応答関数を計算
msci.irf<-irf(msci.var,n.ahead=14,ci=0.95)

plot(msci.irf)

