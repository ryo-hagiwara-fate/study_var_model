library(vars)

msci <- read.csv("Datasets/msci.csv",row.names=1)

msci.var<-VAR(msci,p=3)

# n.ahead=14: 14期先までインパルス応答関数を計算
# ci=0.95: 信頼区間95%
# orth=TRUEで直交化インパルス応答、FALSEで非直交化インパルス応答
msci.irf<-irf(msci.var,n.ahead=14,ci=0.95,orth = TRUE)

plot(msci.irf)

