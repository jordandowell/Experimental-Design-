#experimental design for Brassica Rapa RNAseq project


#treatments 1-72 + mock + control

library(agricolae)
# 4 treatments and k=12 size block
trt<-c(seq(from=1,to=72,1),"control","mock")
k<-12
outdesign<-design.crd(trt,k,serie=2,r=6,seed =41,kinds ="Super-Duper") # seed = 41

PlantLayout<-outdesign[["book"]]
PlantLayout$Tray<-rep(1:37, each=12)
colnames(PlantLayout)<-c("PID","REPLICATE","ISOLATE","TRAY")



