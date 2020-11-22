# 연습해보기!

# 1. a에 1부터 10까지 홀수를 3번씩 출력하고 다음과 같은 matrix 저장하시오
#     [,1] [,2] [,3] [,4] [,5]
#[1,]   1    3    5    7    9
#[2,]   1    3    5    7    9
#[3,]   1    3    5    7    9

a<-matrix(rep(seq(1,10,2),3),nrow=3, byrow = TRUE)
a
# 2. b와 c로 데이터 프레임을 d에 저장하시오
b <- c(1,2,3)
c <- c("a","b","c")
rm(list=ls())
d<-data.frame(b,c)
d
# 3. a와 d로 리스트를 e에 저장하고 2번째층에 저장된 데이터프레임 2행 2열을 출력하시오

e<-list(a,d)
e[[2]][2,2]


library(openxlsx)

# 작업 폴더 확인하기 
getwd()

# 작업 폴더 지정하기
setwd()

# 작업폴더 설정(Set Working Directory) : 'Ctrl+ Shift + h'
## RStudio Menu ; Session -> Set Working Directory -> Choose...

# 데이터 요약
pop_seoul <- read.csv('pop_seoul_euckr.csv')

summary(pop_seoul)


##6 (실습) 다양한 데이터 불러오기
# 통계청 인구 데이터 
## 출처 : http://kosis.kr/statisticsList/statisticsListIndex.do?menuId=M_01_01&vwcd=MT_ZTITLE&parmTabId=M_01_01#SelectStatsBoxDiv

## 파일위치 :'data/'
## 파일이름 : '광역시도별_연령성별_인구수.xlsx'
## 데이터 시작 위치 : 2행

?read.xlsx
seoul<-read.xlsx('광역시도별_연령성별_인구수.xlsx',sheet = 1, startRow=2)
seoul
rm(list=ls())
# 통계청 가구별 주택 거주 데이터
## 출처 : http://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1JU1501&vw_cd=&list_id=&seqNo=&lang_mode=ko&language=kor&obj_var_id=&itm_id=&conn_path=I2

## 파일위치 :'data/'
## 파일이름 : '시도별_가구_주택종류.xlsx'
## 데이터 시작 위치 : 2행

seoul2<-read.xlsx('시도별_가구_주택종류.xlsx',sheet=1, startRow=2)
seoul2
# 국토교통부 아파트 실거래가 데이터(2018, 강남구)
## 출처 : http://rtdown.molit.go.kr/

## 파일위치 :'data/'
## 파일이름 : '아파트매매_2019_강남구.xlsx'
# 데이터 시작 위치 : 17행

apt<-read.xlsx('아파트매매_2019_강남구.xlsx',sheet=1,startRow=17)
apt



######################## 2번 연습문제 ##########################
data(iris)
head(iris)

# 1. Sepal.Length 변수의 짝수행을 출력하시오 .
iris$Sepal.Length[seq(2,150,2)]
iris$Sepal.Length[1:150 %%2 == 0]

iris1<-data.frame(iris$Sepal.Length[seq(2,150,2)])
                  

# 2. Subset을 사용해서 변수 Species 에서 setosa 인 데이터를 추출하시오
subset(iris,Species=="setosa")
iris[iris$Species=="setosa",]

# 3. 2번에서 뽑은 데이터를 a1에 저장하고 Sepal.Length 가 5 보다 작은 Petal.Width 의 합을 구하시오
a1<-subset(iris,Species=="setosa")
a1
sum(a1[a1$Sepal.Length<5, "Petal.Width"])

################################ merge 연습문제 ###################################

a1 <-  data.frame(name=c("aa","bb","cc"),value=seq(10,20,length.out = 3))
a2 <-  data.frame(name=c("cc","dd","ee"),value=seq(30,50,length.out = 3))
a3 <-  data.frame(name=c("aa","dd","ee","ff"),value=seq(20,80,length.out = 4),any=seq(0,3,1))

#  1. a1 와 a2 를 행결합 하시오
rbind(a1,a2)


# 2. a3 와 a1 를 행결합하시오
rbind(a3,a1)


# 3. a3 와 a2 를 name 기준으로 결합 하시오 (a3 데이터는 모두출력)
merge(a3,a2,by.x='name',by.y='name',all.x=TRUE)


####################################################################################

