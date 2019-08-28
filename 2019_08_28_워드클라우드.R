install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP") #파이썬은 KoNLPy

## 사전
useNIADic()



?read.table
search()
library(rJava)
library(memoise)
library(KoNLP)
search()

rm(list = ls())

txt <- readLines("f:\\data\\SpiderMan.txt", encoding="UTF-8")

length(txt)
is(txt)
head(txt)
install.packages("stringr")
library(stringr)

## 특수문 자 제거
txt <- str_replace_all(txt, "\\W", " ")
head(txt)

## 명사 추출
extractNoun("오늘은 즐거운 날이다. 당신은 소중한 사람입니다.")
nouns <- extractNoun(txt)
nouns
dim(nouns)
str(nouns)
class(nouns)
unlist(nouns)
wordcount <- table(unlist(nouns))
max(wordcount)

# 데이터 프레임 전화

df_word <- as.data.frame(wordcount, stringAsFactors = F)
df_word
names(df_word)
max(df_word$Freq)
df_word[df_word$Freq==19,]

df_word <- rename(df_word, word=Var1, freq=Freq)
df_word

## 워드 클라우드
install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)
search()

## 색상 추출
pal <- brewer.pal(8, "Dark2")
set.seed(1004)

## 워드 클라우드
wordcloud(word=df_word$word,
          freq=df_word$freq,
          color=pal,
          random.order = F,
          rot.per=0.4,
          max.words=100)
dim(df_word)
nrow(df_word)

