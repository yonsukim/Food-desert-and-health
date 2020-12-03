
#####  Food and Health 
#####  YKim - 11/30/20

install.packages("readstata13")
install.packages("rlang", dependencies = TRUE)
install.packages("readxl")

install.packages("tidyverse")

library(readstata13)
library("readxl")
# library(readxl)
library(dplyr)

# See below if excel not loaded 
# https://stackoverflow.com/questions/53542831/how-to-install-specific-version-of-rlang-package-in-r

df1 <- read.dta13("C:\\Users\\Dongwoo\\Documents\\R\\Data\\socal_blocks_someemps_2010b_2010.dta")
# View(df1)


df2 <- read_excel("C:\\Users\\Dongwoo\\Documents\\R\\Data\\LA_2.xlsx", sheet="Sheet1")
# View(df2)


# remove.packages(rlang)
# sessionInfo()


df10$tract0  <- substr(df1$blkidfp10, 2, 11)


# View(df10)

vars <- c("bn44511", "bn44512", "bn44522") 
  

df11 <- df10 %>%
  dplyr::group_by(tract0) %>%
  summarise(cnt=sum(bn44511)) 
  
View(df11)

df20 <- df2 %>%
  mutate(tract0=as.character(Geo_FIPS))

# View(df10)
# View(df20)

comb <- df20 %>%
  dplyr::left_join(df10, by="tract0")

# View(comb) - Two tables merged

# 12/2/2020

 
 
head(df22)

frame <- copy_to(sc, df2, overwrite = TRUE)

View(df1)

df3 <- merge(df2, data df1, by=”ID”)






c
install.packages("xlsx")
library("xlsx")

install.packages("writexl")
library("writexl")
write_xlsx(data,"C:\\Users\\Dongwoo\\Dropbox\\Research\\Food_health\\Food_stores.xlsx")



write.xlsx(data, "C:\\Users\\Dongwoo\\Dropbox\\Research\\Food_health\\Food_stores.xlsx")


C:\Users\Dongwoo\Dropbox\YK_JW\Data

install.packages("readxl")
install.packages("scales")
install.packages("rlang")
# install.packages("tidyverse")
# install.packages("readr")




install.packages("readstata13")
library(readstata13)
library(foreign)
library(rlang)



install.packages("foreign")
install.packages("haven")

install.packages("readxl")



data <- read_dta("C:\\Users\\Dongwoo\\Documents\\R\\Data\\socal_blocks_someemps_2010b_2010.dta")
"C:\Users\Dongwoo\Documents\R\Data\socal_blocks_someemps_2010b_2010.dta"

Sample <- read_excel("C:\\Users\\Dongwoo\\Documents\\R\\Data\\Sample.xlsx")
View(Sample)


data <- read_excel(sample.xlsx)
data <- read_excel("C:/Users/Dongwoo/Documents/R/Data/sampole.xlxs")
data <- read_excel("Users/Dongwoo/Documents/R/Data/sampole.xlxs")
data <- read_excel("C:\\Users\\Dongwoo\\Documents\\R\\Data\\sample.xlsx")
View(data)

data <- read.dta("socal_blocks_someemps_2010b_2010")

data <- read.dta("Users/Dongwoo/Documents/R/Data/socal_blocks_someemps_2010b_2010.dta")

data <- read.dta("C:/Users/Dongwoo/Documents/R/Data/socal_blocks_someemps_2010b_2010.dta")
data <- read.dta("socal_blocks_someemps_2010b_2010.dta")

data <- read.dta("Users\\Dongwoo\\Documents\\R\\Data\\socal_blocks_someemps_2010b_2010.dta")


data <- read_excel("C:/Users/Dongwoo/Documents/R/Data/sample.xlsx")
