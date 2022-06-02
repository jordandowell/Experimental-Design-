#experimental design for Brassica Rapa RNAseq project


#treatments 1-72 + mock + control

library(agricolae)

#pick unique number for every new design this will be used to set seed
RandomnumberStart<-62222
# 74 treatments 
trt<-c(seq(from=1,to=72,1),"control","mock")
#TrayPositions = number of leaves in a tray 
TrayPositions<-14
#number of desired replicates
Replicates<-6

#randomized complete block design
outdesign<-design.rcbd(trt,serie=2,r=Replicates,seed =RandomnumberStart,kinds ="Super-Duper") # seed = 41

PlantLayout<-outdesign[["book"]]
PlantLayout$TrayPosition<-rep((rep_len(1:TrayPositions, length.out = length(trt))),times=Replicates)
PlantLayout$Tray<-rep(c(rep(1:floor(length(trt)/TrayPositions),each = TrayPositions ),rep(ceiling(length(trt)/TrayPositions),(length(trt)-length(rep(1:floor(length(trt)/TrayPositions),each = TrayPositions )))
)),length.out=dim(PlantLayout)[1])



colnames(PlantLayout)<-c("PID","REPLICATE","ISOLATE","TRAY","TRAY_POSITION")


