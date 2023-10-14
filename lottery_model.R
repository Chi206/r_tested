############
##  P.19  ##
############
set.seed(1)
par(mar=c(2,2,2,2))
par(mfrow=c(5,2),ann=T)
lottery=factor(sample(1:49,6,F),level=1:49)

barplot(table(lottery),col='red',ylim = c(0,6),space=0,main = paste('累計搖獎第1期:',paste(as.character(lottery),collapse = ' ')))
text(lottery,5,lottery,cex = 0.7,adj=0.9,col='red')

for (i in 1:9) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
  barplot(table(lottery),col='red',ylim = c(0,6),space=0,main = paste('累計搖獎第',i+1,'期:',paste(as.character(new),collapse = ' ')))
  max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
  text(max,5,max,cex = 0.7,adj = 0.9,col='red')
}
############
##  P.20  ##
############
set.seed(1)
par(mar=c(2,2,2,2))
par(mfrow=c(2,2),ann=T)

for (j in 1:4) {
  lottery=factor(sample(1:49,6,F),level=1:49)
  for (i in 1:99) {
    new=sample(1:49,6,F)
    lottery=factor(c(lottery,new),level=1:49)
  }
  barplot(table(lottery),col='red',ylim = c(0,25),space=0,main = paste('累計搖獎100期,','第',j,'遍'))
  abline(h=600/49,col='blue',lwd=2)
  max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
  text(max,23,max,cex = 0.7,adj = 0.9,col='red')
}
############
##  P.22  ##
############
set.seed(1)
par(mar=c(2,2,2,2))
par(mfrow=c(2,2),ann=T)

#1#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:99) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery),col='red',ylim = c(0,25),space=0,main = paste('累計搖獎100期,','第1遍'))
abline(h=600/49,col='blue',lwd=2)
max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
text(max,23,max,cex = 0.7,adj = 0.9,col='red')

#2#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery),col='red',ylim = c(6000/49-14,6000/49+14),space=0,xpd=F,main = paste('累計搖獎1000期,','第2遍'))
abline(h=6000/49,col='blue',lwd=2)
max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
text(max,23,max,cex = 0.7,adj = 0.9,col='red')

#3#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:4999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery),col='red',ylim = c(30000/49-14,30000/49+14),space=0,xpd=F,main = paste('累計搖獎5000期,','第3遍'))
abline(h=30000/49,col='blue',lwd=2)
max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
text(max,23,max,cex = 0.7,adj = 0.9,col='red')

#4#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:9999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery),col='red',ylim = c(60000/49-14,60000/49+14),space=0,xpd=F,main = paste('累計搖獎10000期,','第4遍'))
abline(h=60000/49,col='blue',lwd=2)
max=as.numeric(names(table(lottery)))[table(lottery) == max(table(lottery))]
text(max,23,max,cex = 0.7,adj = 0.9,col='red')
############
##  P.24  ##
############
set.seed(1)
par(mar=c(2,2,2,2))
par(mfrow=c(2,2),ann=T)

#1#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:99) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery)/100,col='red',ylim = c(0,0.20),space=0,main = paste('累計搖獎100期,','第1遍'))
abline(h=6/49,col='blue',lwd=2)

#2#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery)/1000,col='red',ylim = c(0,0.20),space=0,main = paste('累計搖獎1000期,','第2遍'))
abline(h=6/49,col='blue',lwd=2)

#3#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:4999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery)/5000,col='red',ylim = c(0,0.20),space=0,main = paste('累計搖獎5000期,','第3遍'))
abline(h=6/49,col='blue',lwd=2)

#4#
lottery=factor(sample(1:49,6,F),level=1:49)
for (i in 1:9999) {
  new=sample(1:49,6,F)
  lottery=factor(c(lottery,new),level=1:49)
}
barplot(table(lottery)/10000,col='red',ylim = c(0,0.20),space=0,main = paste('累計搖獎10000期,','第4遍'))
abline(h=6/49,col='blue',lwd=2)
