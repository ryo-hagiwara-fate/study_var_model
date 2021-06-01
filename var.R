# install.packages("vars") 
library(vars)

# 練習データのCanadaを時系列データ型でインポート
# e: 千人あたりの雇用
# prod: 労働生産性
# rw: 実質賃金
# U: 失業率

data(Canada)
Canada_var <- VAR(Canada,p=VARselect(Canada,lag.max=4)$selection[1])
#summary(Canada_var)
#plot(Canada_var)


# response には応答する方の変数名、impulse にはインパルスを与える誤差項を含む方の変数名を入力する
# orth は直交化インパルス応答関数を求めるときには TRUE 、非直交化インパルス応答関数を求めるときにはFALSE とする
# n.aheadはn期先

# canada_irf<-irf(Canada_var,impulse='prod', response='rw', n.ahead=10,orth=FALSE)

canada_irf<-irf(Canada_var,n.ahead=14,ci=0.95)
plot(canada_irf)