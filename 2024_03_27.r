######################################
## Lecture for Data Mining course
## Implemented by Jaeryeong Kim
## 2024-03-27
######################################

### Step 1: JDK install (Selenium requires JAVA to be installed beforehand.)
# install site
# https://www.java.com/ko/download/manual.jsp 

# folder check C:/Program Files/Java
# If you're having trouble installing JAVA...
# https://blogleeyoo.github.io/r-pyomega/posts/R-Crawling-rjava/


### Step 2: making r_selenium dir
## recommand C:\r_selenium


### Step 3: Selenium driver install

# Selenium standalone server
# http://selenium-release.storage.googleapis.com/index.html
# selenium-server-standalone-4.0.0-alpha-1.jar

# geckodriver
# https://github.com/mozilla/geckodriver/releases/tag/v0.17.0
# geckodriver-v0.17.0-win64.zip

# chrome driver
# https://chromedriver.chromium.org/downloads
# https://googlechromelabs.github.io/chrome-for-testing/
# check your chrome version !

## selenium & driver files move on C:\r_selenium


### Step 4: Run command prompt 

# Run cmd as administrator * 관리자 권한
# cd C:\r_selenium
# java -Dwebdriver.gecko.driver=”geckodriver.exe” -jar selenium-server-standalone-4.0.0-alpha-1.jar -port 4445


### Step 5: let's start !

## Set Repositories
setRepositories(ind = 1:7)

## Set working dir
setwd("C:\\lecture")
getwd()

## install.packages("rJava")
library(rJava)

## load library 
library(RSelenium)
library(rvest)
library(httr)
library(jsonlite)

library(data.table)
library(dplyr)
library(tidyverse)


## Setting the encoding method
Sys.setlocale("LC_ALL", "English")

## Url setting 
url <- "https://www.fifa.com/fifa-world-ranking/men?dateId=id13974"
url.No.id <- "https://www.fifa.com/fifa-world-ranking/men?dateId="

## Extracting page sources
response <- GET(url)
test.string <- content(response, as = "text") 

## Extracting id info.
ids <- gregexpr('"id":"id\\d+","iso":"\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d{3}Z"', test.string, perl = TRUE)
ids <- regmatches(test.string, ids)

ids.1 <- ids[[1]]
ids.1 <- unique(ids.1)

## data preprocessing
df <- data.frame(strings = ids.1)

df <- df %>% 
  mutate(strings = str_replace_all(strings, "\"", "")) %>% # 따옴표 제거
  separate(strings, into = c( "id", "iso"), sep = ",") 

## data cleansing 
df$id <- gsub("id[:]","",df$id)

df$iso <- gsub("iso[:]","",df$iso)
df$iso <- gsub("T00[:]00[:]00[.]000Z","",df$iso)

df %>% head


## Control the web browser 
remDr <- remoteDriver(remoteServerAddr = "localhost" , 
                      port = 4445L, # port 번호 입력
                      browserName = "chrome") # browserName 실행 브라우저 입력


remDr$open()

## Initializing variables
result <- list()

table_df <- c()
url.tmp <- c()
privacy_button <- c()
dropdown <- c()
table <- c()
table_html <- c()
table_df <- c()



for( i in 1:nrow(df)){
  
  ## Initializing variables
  table_df <- c()
  url.tmp <- c()
  privacy_button <- c()
  dropdown <- c()
  table <- c()
  table_html <- c()
  table_df <- c()
  
  ## setting url 
  url.tmp <- paste0(url.No.id, df$id[i])
  
  ## Checking the current state
  cat(paste0(url.tmp),"\n")  
  
  ## page navigation
  remDr$navigate(url.tmp)
  Sys.sleep(5)
  
  if( i == 1){
    
    ## Accept cookies
    ## 개인정보 수집 동의 버튼 클릭 / f12 
    ## copy element 
    ## <button id="onetrust-accept-btn-handler">I Accept</button>
    
    
    privacy_button <- remDr$findElement(using = 'id', value = 'onetrust-accept-btn-handler')
    privacy_button$clickElement()
    
    #새로고침후 1초 대기
    remDr$navigate(url.tmp)
    Sys.sleep(1)
    
    
  }
  
  ## //*[@id="content"]/main/div[3]/section/div/div/div[6]/button/div[2]
  ## //*[@id="content"]/main/div[3]/section/div/div/div[6]/button
  ## Show full rankings
  dropdown <- remDr$findElement(using = 'xpath', value = '//*[@id="content"]/main/div[3]/section/div/div/div[6]/button')
  dropdown$clickElement()
  
  Sys.sleep(1)
  dropdown$clickElement()
  Sys.sleep(1)
  
  ## Importing tables 
  table <- remDr$findElement(using = "xpath", value = '//*[@id="content"]/main/div[3]/section/div/div/div[5]/table')
  table_html <- table$getElementAttribute("outerHTML")[[1]]
  table_df <- read_html(table_html) %>% html_nodes("table") %>% html_table(fill = TRUE) %>% as.data.frame()
  
  ## add dates
  table_df$dates <- df$iso[i]
  
  ## append result list
  result[[i]] <- table_df %>% dplyr::select(Team, Total.Points, dates) %>% as.data.frame()
  
  print(i)  
  
}

result[[2]]

result.tmp <- lapply(result, FUN = function(x){x[c(1:90),]})

dim(result[[1]])
dim(result.tmp[[1]])

head(result.tmp[[1]])
head(result.tmp[[2]])
head(result.tmp[[3]])

(result.tmp)




## 동적사이트시 테이블 추출 불가
## https://mrchypark.github.io/getWebR/#68


