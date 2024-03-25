## R 사용법
항상 시작 시

```R
WORK_DIR <- ""
setwd(WORK_DIR)
```

시작 디렉토리를 지정해주고 시작할 것

Data를 사용할 시 무조건 dataframe의 형태여야 한다.

R의 vs 타입은 
- continuous -> numeric
- categorical -> factor

R dataframe 예제

```r
data.frame(name = c( "Sarah" , "Ana" , "Jose" ),
rank = 1 : 3 ,
age = c( 35.5 , 25 , 58 ),
city = c( NA , "New York" , "LA" ))
```

data와 tibble

![image](https://github.com/Jaeboong/Study/assets/158824294/77457e68-3763-4ce8-b686-eca201786f3d)

tibble이 좀 더 구체적이다.

![image](https://github.com/Jaeboong/Study/assets/158824294/75a931f0-ddc0-4a0f-93a7-c8a1403dbd1d)

str(data) <- data structure 데이터의 구조 출력

data를 읽은 후 데이터프레임화 tibble 사용

data <- tibble(fread("small_data.csv", head= T, sep=","))

glimpse(data) <- 데이터가 커지면 glimpse 사용
summary(data) <- 

factor variable로의 변환

untidy data를 clean data로 변환하면 숫자의 경우는 as.numerical로 실수화 시킬 수 있다.

하지만 chr 타입의 경우 as.factor로 먼저 변환을 해준 후 as.numerical로 실수화 시켜주면 

a, b, a와 같은 data를

1 2 1과 같이 실수화 시킬 수 있다.
