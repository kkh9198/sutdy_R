rep(seq(2,100,2),each=2)
rep(1:5,1:5)

A=(rep(seq(1,3,0.5),1:5))
B=(seq(1:15))

M=matrix(c(B,A),ncol=5,nrow=6,byrow=T)

colnames(M)<-c("Col1","Col2","Col3","Col4","Col5")
M

M1=matrix(M[c(1,4,6),c(1,3,5)],ncol=3,nrow=3)
M1