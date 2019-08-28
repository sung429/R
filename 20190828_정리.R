library(readxl)
data <- read_excel("f:\\data\\train_bike.xlsx") 
str(data)
library(ggplot)
ggplot(data, aes(holiday,count))+ geom_col()
ggplot(data, aes(workingday,count))+ geom_col()

View(data)
getwd()

setwd()

seq(0,200,2)

install.packages()

library(dplyr)
search()

dim()
summary()
head()

class()
str()
is(mtcars) #맨날 까먹
class(mtcars)

colnames(mtcars)
summary(mtcars)

read.csv()
read.table("파일명", sep=",") #,로 구분된 텍스트 파일 불러오기
library(readxl)
read_excel()
library(ggplot2)
mean()
max()
min()
median()
quantile(mpg$hwy)
IQR(mpg$hwy)
?IQR

# 행추출 filter()
# 열추출 select()
# 정렬 arrange()
# 변수 추가 mutate()
# 집단별로 나누기 group by ()
# 통계치 산출 - summarise()
# merge, left_join()

dim()

as.numeric(factor)

colSums(is.na(titanic))

na.omit(titanic)

library(moonBook)
mytable(Survived1 ~ Pclass + Sex , Sibsp, data = titanic)
library(Hmisc)
summary(Survived)
library(gmodels)
library(Amelia)

