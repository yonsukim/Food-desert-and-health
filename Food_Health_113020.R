
#####  Food and Health 
#####  YKim - 11/30/20

install.packages("readstata13")
library(readstata13)

library(readxl)

data <- read.dta13("C:\\Users\\Dongwoo\\Documents\\R\\Data\\socal_blocks_someemps_2010b_2010.dta")
View(data)


install.packages("xlsx")
library("xlsx")

install.packages("writexl")
library("writexl")
write_xlsx(data,"C:\\Users\\Dongwoo\\Dropbox\\Research\\Food_health\\Food_stores.xlsx")



write.xlsx(data, "C:\\Users\\Dongwoo\\Dropbox\\Research\\Food_health\\Food_stores.xlsx")


C:\Users\Dongwoo\Dropbox\YK_JW\Data





install.packages("readstata13")
library(readstata13)
library(foreign)



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
