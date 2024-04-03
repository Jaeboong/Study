######################################
## Lecture for Data Mining course
## Implemented by Minseok Seo
## 2024-03-13
######################################

## Set Repositories
setRepositories(ind = 1:7)

## Load library
#install.packages("janitor")

library(tidyverse)
library(lubridate)
library(janitor)
library(glue)
library(data.table)

## Set Working Dir.
WORK_DIR <- "C:\\Users\\user\\Desktop\\Rstudio"
DATA_DIR <- "C:\\Users\\user\\Desktop\\Rstudio"

setwd(WORK_DIR)
getwd()

## First example
data <- data.frame(name = c("Minseok", "Kimchi", "Chulsoo"),
           rank = 1:3,
           age = c(34, 35, 36),
           city = c("Sejong", "Seoul", "Suwon"))

dataTibble <- tibble(name = c("Minseok", "Kimchi", "Chulsoo"),
                   rank = 1:3,
                   age = c(34, 35, 36),
                   city = c("Sejong", "Seoul", "Suwon"))

class(data)
class(dataTibble)

data
dataTibble


##
setwd(DATA_DIR)

# Cutting-edge
data <- tibble(fread("small_data.csv", head = T, sep = ","))
data


glimpse(data)
summary(data)


untidy_data <- tibble(
  name = c( "Ana" , "Bob" , "Cara" ),
  meds = c( "advil 600mg 2xday" , "tylenol 650mg 4xday" , "advil 200mg 3xday" )
)

untidy_data %>% 
  separate(meds, into = c("medName", "Dosage", "TimesPerDay"), sep = " ") %>% 
  mutate(TimesPerDay = as.numeric(str_remove(TimesPerDay, "xday"))) -> untidy_data
#

untidy_data %>% 
  mutate(Dosage = as.numeric(str_remove(Dosage, "mg"))) -> untidy_data


#

untidy_data2   <-   tibble(
  name   =   c( "Ana" , "Bob" , "Cara" ),
  wt_07_01_2018   =   c( 100,   150 ,   140 ),
  wt_08_01_2018   =   c( 104 ,   155 ,   138 ),
  wt_09_01_2018   =   c( NA ,   160 ,   142 )
)

untidy_data2 %>%
  gather(key = "date", value = "weight", -name) %>% 
  mutate(date = str_remove(date, "wt_"), date = dmy(date))

#


untidy_data2 %>%
  gather(key = "date", value = "weight", -name) %>%
  mutate(date = str_remove(date, "wt_"), date = dmy(date)) %>% 
  separate(date, into = c("Month", "Day", "Year"), sep = "-")


#

demo_data <- read_csv("yrbss_demo.csv")
demo_data

head(demo_data)
tail(demo_data)
glimpse(demo_data)

bmi20_data <- demo_data %>% filter(bmi > 20)

demo_data %>%
  select(record,grade, sex)


##
demo_data %>%
  rename(id = record)
 



################################################
demo_data <- read_csv("yrbss_demo.csv")
demo_data


newdata <- demo_data %>% 
  mutate(height_m = sqrt(stweight / bmi))

newdata %>% select(record, bmi, stweight)


demo_data %>% mutate(bmi_high = (bmi > 30))
demo_data %>% mutate(male = (sex == "Male"))
demo_data %>% mutate(male = 1 * (sex == "Male"))
demo_data %>% mutate(grade_num = as.numeric(str_remove(grade, "th")))


## ------------------------------------------------------------------------
demo_data2 <- demo_data %>%
  mutate(
    bmi_group = case_when(
      bmi < 18.5 ~ "underweight",               # condition ~ new_value
      bmi >= 18.5 & bmi <= 24.9 ~ "normal",
      bmi > 24.9 & bmi <= 29.9 ~ "overweight",
      bmi > 29.9 ~ "obese")
  )
demo_data2 %>% select(bmi, bmi_group) %>% head()


## ------------------------------------------------------------------------
demo_data %>% 
  separate(age,c("a","y","o","w","w2"),
           sep = " ") %>%
  select(a:w2)


## ------------------------------------------------------------------------
demo_data %>% 
  unite("sexgr", sex, grade, sep=":") %>%
  select(sexgr)




## ------------------------------------------------------------------------
demo_data %>% na.omit()


## ------------------------------------------------------------------------
data_dups <- tibble(
  name = c("Ana","Bob","Cara", "Ana"),
  race = c("Hispanic","Other", "White", "Hispanic")
)


## ------------------------------------------------------------------------
data_dups


## ------------------------------------------------------------------------
data_dups %>% distinct()


## ------------------------------------------------------------------------
demo_data %>% arrange(bmi, stweight) %>% head(n=3)

demo_data %>% arrange(desc(bmi), stweight) %>% head(n=10)



# mutate_if
demo_data %>% mutate_if(is.numeric, as.character)   # as.character() is a function
demo_data %>% mutate_if(is.character, tolower)      # tolower() is a function
demo_data %>% mutate_if(is.double, round, digits=0) # arguments to function can go after

# mutate_at
demo_data %>% mutate_at(vars(age:grade), toupper)  # toupper() is a function
demo_data %>% mutate_at(vars(bmi,stweight), log)
demo_data %>% mutate_at(vars(contains("race")), str_detect, pattern = "White")

# mutate_all
demo_data %>% mutate_all(as.character)


## ----eval=FALSE----------------------------------------------------------
demo_data %>% select_if(is.numeric)

demo_data %>% rename_all(toupper)
demo_data %>% rename_if(is.character, toupper)

demo_data %>% rename_at(vars(contains("race")), toupper)



########################################################


demo_data <- read_csv("yrbss_demo.csv")
qn_data <- read_csv("yrbss_qn.csv")



## ------------------------------------------------------------------------
# default table
demo_data %>% tabyl(grade)


## ------------------------------------------------------------------------
# output can be treated as tibble
demo_data %>% tabyl(grade) %>% select(-n)


## ------------------------------------------------------------------------
demo_data %>%
  tabyl(grade) %>%
  adorn_totals("row") %>% #<<
  adorn_pct_formatting(digits=2)  #<<


## ------------------------------------------------------------------------
# default 2x2 table
demo_data %>% tabyl(grade, sex)


## ------------------------------------------------------------------------
demo_data %>% tabyl(grade, sex) %>%
  adorn_percentages(denominator = "col") %>% #<<
  adorn_totals("row") %>% #<<
  adorn_pct_formatting(digits = 1) %>% #<<
  adorn_ns() #<<


## ------------------------------------------------------------------------
# summary of all data as a whole
demo_data %>% 
  summarize(bmi_mean =mean(bmi,na.rm=TRUE), #<<
            bmi_sd = sd(bmi,na.rm=TRUE)) #<<


## ------------------------------------------------------------------------
# summary by group variable
demo_data %>% 
  group_by(grade) %>% #<<
  summarize(n_per_group = n(), 
            bmi_mean =mean(bmi,na.rm=TRUE),
            bmi_sd = sd(bmi,na.rm=TRUE))


## ---- echo=FALSE---------------------------------------------------------
data1 <- tibble(id = 1:2, name = c("Nina","Yi"), height=c(2, 1), age=c(4,2))
data2 <- tibble(id = 7:9, name = c("Bo","Al","Juan"), height=c(2, 1.7, 1.8), years=c(3,1,2))


## ------------------------------------------------------------------------
data1


## ------------------------------------------------------------------------
data2


## ------------------------------------------------------------------------
bind_rows(data1,data2, .id = "group") #<< 


## ------------------------------------------------------------------------
# datasets must have same number of rows to use bind_cols()
demo_sub <- demo_data %>% slice(1:20) # first 20 rows of demo_data
qn_sub <- qn_data %>% slice(1:20)     # first 20 rows of qn_data
bind_cols(demo_sub, qn_sub)           # blindly bind columns; 2nd record column got renamed #<<   


## ---- results="hold"-----------------------------------------------------
df1 <- tibble(a = c(1, 2), b = 2:1)
df2 <- tibble(a = c(1, 3), c = 10:11)
df1
df2


## ------------------------------------------------------------------------
left_join(df1, df2)


## ------------------------------------------------------------------------
colnames(demo_data)
colnames(qn_data)
intersect(colnames(demo_data), colnames(qn_data)) #<<


## ------------------------------------------------------------------------
merged_data <- 
  full_join(demo_data, qn_data, 
            by = "record")

# Check dimensions of original and new datasets


## ------------------------------------------------------------------------
dim(demo_data); dim(qn_data); dim(merged_data) 


## ------------------------------------------------------------------------
merged_data


## ---- include=FALSE------------------------------------------------------
qn_data2 <- qn_data %>% add_column(qn_yes = 1)
all_data <- left_join(demo_data, qn_data2)
all_data %>% tabyl(qn_yes)
all_data %>% tabyl(qn_yes,grade)


## ------------------------------------------------------------------------
BP_wide <- tibble(id = letters[1:4],
                  sex = c("F", "M", "M", "F"),
                  SBP_v1 = c(130, 120, 130, 119),
                  SBP_v2 = c(110, 116, 136, 106),
                  SBP_v3 = c(112, 122, 138, 118))
BP_wide


## ------------------------------------------------------------------------
BP_wide


## ------------------------------------------------------------------------
BP_long <- BP_wide %>% 
  gather(key = "visit", value = "SBP", 
         SBP_v1:SBP_v3)
BP_long


## ------------------------------------------------------------------------
BP_long


## ------------------------------------------------------------------------
BP_wide2 <- BP_long %>% 
  spread(key = "visit", value = "SBP")
BP_wide2


## ------------------------------------------------------------------------
BP_long


## ------------------------------------------------------------------------
BP_long2 <- BP_long %>% 
  mutate(visit = 
           str_replace(visit,"SBP_v","")) 
BP_long2


## ------------------------------------------------------------------------
head(BP_long2, 2)
BP_wide3 <- BP_long2 %>% 
  spread(key = "visit", value = "SBP")
BP_wide3


## ------------------------------------------------------------------------
BP_wide4 <- BP_long2 %>% 
  spread(key = "visit", value = "SBP",
         sep="_") # specify separating character
BP_wide4


## ------------------------------------------------------------------------
DBP_wide <- tibble(id = letters[1:4],
                   sex = c("F", "M", "M", "F"),
                   v1.DBP = c(88, 84, 102, 70),
                   v2.DBP = c(78, 78, 96, 76),
                   v3.DBP = c(94, 82, 94, 74),
                   age=c(23, 56, 41, 38)
)


## ---- include=FALSE------------------------------------------------------
DBP_long <- DBP_wide %>%
  gather(key = "visit", value = "DBP", 
         v1.DBP, v2.DBP, v3.DBP) %>%
  mutate(visit = 
           str_replace(visit,c("v"), "")) %>%
  mutate(visit = 
           str_replace(visit,".DBP",""))  
DBP_long

DBP_wide2 <- DBP_long %>% 
  spread(key = "visit", value = "DBP",
         sep=".") # specify separating character
DBP_wide2


BP_both_long <- left_join(BP_long2, DBP_long, by = c("id", "sex", "visit"))
BP_both_long


## ------------------------------------------------------------------------
mydata <- tibble(id = 7:9, 
                 name = c("Bo","Al","Juan"), 
                 height = c(2, NA, 1.8), 
                 years = c(51,35,NA))
mydata


## ------------------------------------------------------------------------
mydata %>% drop_na()


## ------------------------------------------------------------------------
mydata %>% drop_na(height)


## ------------------------------------------------------------------------
mydata


## ------------------------------------------------------------------------
mydata %>% 
  mutate(height = replace_na(height, "Unknown"), #<<
         years = replace_na(years, 0) ) #<<


## ------------------------------------------------------------------------
qn_data %>% 
  mutate_at(vars(starts_with("q")), #<<
            .funs = list(~replace_na(.,"No answer"))) %>% #<<
  tabyl(q8, q31)


## ------------------------------------------------------------------------
all_data %>% tabyl(race4)
all_data %>%
  mutate(race4 = na_if(race4, "All other races")) %>% #<<
  tabyl(race4)


## ---- eval=FALSE---------------------------------------------------------
## smalldata <- read_csv("data/small_data.csv",
##                       na = c("","9999","NA")) # specify your own missing values #<<


## ---- eval=FALSE---------------------------------------------------------
## # replace all "" with NA
## all_data %>%
##   mutate_if(is.character, .funs = na_if(.,"")) #<<
## 
## # replace all 9999's with NA
## all_data %>%
##   mutate_if(is.numeric, .funs = na_if(.,9999)) #<<


## ------------------------------------------------------------------------
mydata <- tibble(name = c("J.M.","Ella","Jay"), state = c("New Mexico","New York","Oregon"))


## ------------------------------------------------------------------------
mydata %>% filter(str_detect(name,"J"))       


## ------------------------------------------------------------------------
mydata %>% mutate(
  new_state = str_detect(state,"New"))    


## ------------------------------------------------------------------------
mydata %>% mutate(state_old = str_replace_all(state, "New", "Old"))


## ------------------------------------------------------------------------
mydata %>% mutate(
  name2 = str_replace(name, "l", "-"),           # first instance
  name3 = str_replace_all(name, "l", "-"),       # all instances
  name4 = str_replace_all(name, fixed("."), "")) # special characters with fixed()


## ------------------------------------------------------------------------
mydata %>% mutate(
  short_name  = str_sub(name, start = 1, end = 2),   # specify start to end
  short_name2 = str_sub(name, end = 2),              # specify only end
  short_state = str_sub(state, end = -3)             # negative endices, from end
)


## ------------------------------------------------------------------------
all_data %>%
  mutate(info = glue("Student {record} is {age} with BMI = {round(bmi,1)}")) %>% #<<
  select(record, info) %>% head(5)


## ------------------------------------------------------------------------
demo_data %>% 
  group_by(sex) %>%
  summarize(n_sex = n(),
            bmi_mean = mean(bmi,na.rm=TRUE),
            bmi_sd = sd(bmi,na.rm=TRUE)) %>%
  mutate(bmi_mean_se = glue("{round(bmi_mean,1)} ({signif(bmi_sd/sqrt(n_sex),2)})")) #<<


## ------------------------------------------------------------------------
timedata <- 
  tibble(name = c("Yi","Bo","DJ"), 
         dob=c("10/31/1952","1/12/1984","2/02/2002"))
timedata %>% 
  mutate(dob_date = mdy(dob),
         dob_wrong = dmy(dob)) # wrong order


## ------------------------------------------------------------------------
timedata %>% mutate(
  dob = mdy(dob),                            # convert to a date
  dob_year = year(dob),                      # extract the year
  time_since_birth = dob %--% today(),       # create an "interval"
  age = time_since_birth %/% years(1),       # modulus on "years"
  dobplus = dob + days(10)                   # add 10 days
)                  


## ------------------------------------------------------------------------
mydata <- tibble(
  id = 1:4, 
  grade=c("9th","10th","11th","9th")) %>%
  mutate(grade_fac = factor(grade)) #<<
levels(mydata$grade_fac)
mydata %>% arrange(grade_fac)


## ------------------------------------------------------------------------
mydata <- mydata %>% 
  mutate(
    grade_fac = #<<
      fct_relevel(grade_fac, #<<
                  c("9th","10th","11th"))) #<<
levels(mydata$grade_fac)
mydata %>% arrange(grade_fac)


## ------------------------------------------------------------------------
mydata <- tibble(loc = c("SW","NW","NW","NE","SE","SE"))

mydata %>% mutate(
  loc_fac = factor(loc),
  loc2 = fct_collapse(loc_fac,                         # collapse levels #<<
                      south = c("SW","SE"), #<<
                      north = c("NE","NW")), #<<
  loc3 = fct_lump(loc_fac, n=2, other_level = "other") # most common 2 levels + other
)


## ------------------------------------------------------------------------
mydata <- tibble("First Name"= c("Yi","DJ"), "last init" = c("C","R"),
                 "% in" = c(0.1, 0.5), "ñ$$$"= 1:2, " "=3:2,"     hi"=c("a","b"), 
                 "null"=c(NA,NA))
mydata
mydata %>% clean_names() %>%        # in the janitor package #<<
  remove_empty(c("rows","cols"))    # also useful


## ------------------------------------------------------------------------
library(readxl)
read_excel("data/messy_names.xlsx", .name_repair = janitor::make_clean_names)


## ------------------------------------------------------------------------
messy_data <- tibble(NAME = c("J N","A C","D E"), 
                     `months follow up` = c("", 10, 11), 
                     `Date of visit` = c("July 31, 2003", "Nov 12, 2005", "Aug 3, 2007"))


## ---- echo=FALSE---------------------------------------------------------
clean_data <- messy_data %>% 
  clean_names() %>%
  mutate(
    months_follow_up = replace_na(months_follow_up,""),
    months_follow_up = as.numeric(months_follow_up),
    date_of_visit = mdy(date_of_visit),
    date_last_visit = date_of_visit + months(months_follow_up)) %>%
  drop_na(months_follow_up) %>%
  mutate(name = str_replace_all(name," ",""))


## ---- eval=FALSE, echo=FALSE---------------------------------------------
## # RUN THESE AFTER KNITTING
## # create R file
## knitr::purl(here::here("02-data-wrangling-tidyverse/02_data_wrangling_slides_part2.Rmd"), out = here::here("02-data-wrangling-tidyverse/02_data_wrangling_slides_part2.R"))
## # remotes::install_github('rstudio/pagedown')
## pagedown::chrome_print(here::here("02-data-wrangling-tidyverse/02_data_wrangling_slides_part2.html"))





