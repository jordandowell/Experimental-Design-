#creating a an experimental design for Botrytis RNAseq experiments


library(agricolae)

#how many isolates

nIsolates<-74
nReplicates<- 6
#how many leaves can fit in one tray

TraySize<-14

nTrays<- nIsolates*nReplicates/TraySize
