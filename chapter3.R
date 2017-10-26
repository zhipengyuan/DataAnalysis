View(anscombe)
a <- anscombe
mean(a$x1)
plot(a$x1,a$y1)
lm(y1~x1,a)
#2 represents column, 1 arrow, try to replace mean with sd
apply(a,2,mean)

data()
view(faithful)
f<- faithful
str(f)
hist(f$eruption,breaks = 20)
 
#assignment: change str of anscombe, get tidydata

#diff一阶差分, sign取符号
mean(sign(diff(x))==sign(diff(y)))
#用向量的思维表示一阶差分
y <- c(NA, x[-1]-x[-length(x)]) 