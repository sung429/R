### 결측치 처리하기
df <- data.frame(Pclass=c(1,2,3,NA,1),
                 Embarked=c("C","S","Q", NA, NA),
                 Fare=c(NA,150,300,300,100))

df

##
## is.na(데이터셋)
is.na(df)

## 결측치 개수 확인
table(is.na(df))

## 각각의 컬럼별 결측치 확인
table(is.na(df$Pclass))
table(is.na(df$Embarked))
table(is.na(df$Fare))
mean(df$Pclass, na.rm = TRUE)
Col

titanic <- read.csv("f:\\data\\titanic\\train.csv")
titanic
library(dplyr)
df %>% filter(!is.na(Pclass))

## 실습 3-2
## Embarked NA빼고 출력
## FARE NA 뺴고 출력
## 모든NA를 빼고 출력

df %>% filter(!is.na(Embarked))
df %>% filter(!is.na(Fare))

df %>% filter(!is.na(Pclass)&!is.na(Embarked)&!is.na(Fare))

table(is.na(titanic))
table(is.na(titanic$Age))
titanic %>% filter(!is.na(Age))
colSums(is.na(titanic))

mean(df$Fare, na.rm=T)
min(df$Fare, na.rm=T)
mtcars[seq(1,10,1)]
mtcars[1]
colnames(mtcars)
mc_part <-mtcars
mc_part[c(4,8), 'drat'] <- NA
mc_part %>% summarise(mean_drat=mean(drat, na.rm=T),
                      sum_drat=sum(drat, na.rm=T),
                      med_drat=median(drat, na.rm=T))
mc_part
## 실습 4-1 qsec를 4,8행의 데이터를 NA를 처리하고,
## mean, sum, median, var, sd

mc_part[c(4,8), 'qsec'] <- NA
head(mc_part, 10)
mc_part %>% summarise(mean_qsec=mean(qsec, na.rm=T),
                      sum_qsec=sum(qsec, na.rm=T),
                      med_qsec=median(qsec, na.rm=T),
                      var_qsec=var(qsec, na.rm=T),
                      sd_qsec=sd(qsec, na.rm=T))
mc_part %>% group_by(cyl) %>% summarise(mean_qsec=mean(qsec, na.rm=T),
                                        sum_qsec=sum(qsec, na.rm=T),
                                        med_qsec=median(qsec, na.rm=T),
                                        var_qsec=var(qsec, na.rm=T),
                                        sd_qsec=sd(qsec, na.rm=T))

mc_part %>% group_by(cyl,gear) %>% summarise(mean_qsec=mean(qsec, na.rm=T),
                                        sum_qsec=sum(qsec, na.rm=T),
                                        med_qsec=median(qsec, na.rm=T),
                                        var_qsec=var(qsec, na.rm=T),
                                        sd_qsec=sd(qsec, na.rm=T))
table(mc_part$gear)
dim(mc_part)
View(mc_part)

## 이상치 찾고 처리.
outlier <- data.frame(Pclass=c(1,2,3,4,55,3,1,1,2), family=c(1,2,3,1,2,3,1,1,1))
outlier
library(ggplot2)
ggplot(outlier, aes(Pclass)) + geom_bar()

outlier$Pclass %in% c(1,2,3)

## 값이 %in% c(1,2,3)
## %north%
install.packages("Hmisc")
library(Hmisc)

`%notin%` <- Negate(`%in%`)
outlier$Pclass %in% c(1,2,3)
outlier$Pclass %notin% c(1,2,3)

# dat[행, 열]
outlier %>% filter(Pclass %notin% c(1,2,3))
outlier[!(outlier$Pclass %in% c(1,2,3)),]
outlier[outlier$Pclass %in% c(1,2,3),]
outlier[outlier$Pclass %notin% c(1,2,3),]
outlier

## 실습 5-1 이상치 처리
#family가 3명인 가족만 뽑자

outlier[outlier$family %in% c(3),]
outlier[!(outlier$family %in% c(1,2)),]
outlier[outlier$family %notin% c(1,2),]
table(outlier$Pclass)

outlier$Pclass <- ifelse(outlier$Pclass==55,1,outlier$Pclass)
table(outlier$Pclass)
outlier
outlier[!(outlier$Pclass %in% c(1,2,3)), 'Pclass'] = 1

titanic$Age
titanic[is.na(titanic$Age), 'Age'] = 29

