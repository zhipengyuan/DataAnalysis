print("Hello World!")
#提取1到10的偶数
z<-NULL
for(i in 1:10){
  if(i%%2==0) 
    z<-c(z,i)}
z

#NA要占一个位置
z<-NA
for(i in 1:10){
  if(i%%2==0)
    z<-c(z,i)}
z

#删除缺失值
na.omit(z)
z#这里有一个问题，关于数据属性和向量过滤

#创建双精向量（numeric）
dbl_var<-c(1,2.5,4.5)
#创建整型向量（integer）
int_var<-c(1L,6L,10L)
#创建字符向量（character）
b<-c("one","two","three")
#逻辑向量（logic）
c<-c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)

#用函数创建向量
x<-1:100
y<-seq(from=1,to=100,by=2) #或者 seq(1,100,by=2)
seqday<-seq.Date(as.Date("2017/1/1"),Sys.Date(),by="100 day")
rep(1:6,1:6)

paste("x",1:10,sep = "") #sep中间代表分隔符，不一定为空格
paste("x",seq(from=1,to=10,by=2),sep = "")
paste0(c("x","y"),1:10) #法2

#删除偶数
x<-1:100
x<-x[-seq(2,100,by=2)]

#一阶差分
x <- c(88,5,12,13,20,11)
diff<-c(NA,x[-1]-x[-length(x)])

#遍历向量
#seq_along(x)=1:length(x)

#这里的for循环等同于x
x<-1:100
for(i in 1:100){
  print(x[i])
}

#homework
a<-paste0(letters[1:5],seq(1,9,by=2))
b<-paste0(LETTERS[1:4],seq(2,8,by=2))
c<-c(a,b)


#向量取子集
set.seed(123)
x<-sample(1:100,50,replace = TRUE)
head(x)
#取出x的奇数行
x[x%%2==1]
x[x%%2!=0]

y<-x[1:5]            #使用数字向量取值
y[c(T,F,T,F,T)]      #使用逻辑向量取值

y%%2==1

x[x>25]
length(x[x>25])
sum(x[x>25])
mean(x>25)

a<-names(y)<-sample(letters,5) #为y的每一个值命名一个字母
y[c("b","b","t","c")]#用名字取值
y[sample(a,100,replace = T)]

x[x>=21&x<=50]
which(x>50)    #列出大于50的数据的位置
x[which(x>50)] #将(2)中的结果提取出来

x<-1:10
any(x>8)
all(x>88)
all(x>0)

#游程计算
