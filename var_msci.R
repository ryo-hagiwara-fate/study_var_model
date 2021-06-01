# 沖本本の第4章『VARモデル』章末演習で使われたサンプルデータMSCI（G7各国の株式収益率）

library(vars)

msci <- read.csv("Datasets/msci.csv",row.names=1)

msci.var<-VAR(msci,p=3)

summary(msci.var)

plot(msci.var)