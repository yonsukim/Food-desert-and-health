
#####  Food and Health 
#####  YKim Created - 11/30/20

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



#### DATASET1: Block data(JW) imported
df10 <- read.dta13("C:\\Users\\Dongwoo\\Documents\\R\\Data\\socal_blocks_someemps_2010b_2010.dta")
# View(df10)

#### Creating tract col. by substring
df10$tract0  <- substr(df10$blkidfp10, 2, 11)





#### DATASET2: Built-environment data imported
df20 <- read_excel("C:\\Users\\Dongwoo\\Documents\\R\\Data\\LA_2.xlsx", sheet="Sheet1")
# View(df20)

df20 <- df2 %>%
  mutate(tract0=as.character(Geo_FIPS))

# View(df20)






#### DATASET3: Childhood Obesity in LA
df30 <- read_excel("C:\\Users\\Dongwoo\\Documents\\R\\Data\\Childhood_Obesity_LA.xlsx", sheet="Childhood_Obesity_LA_")

## keep Year, Percent, Count, Track Number, Neighborhood, GEOID, Denominator
#### Creating tract col. by substring
df30$tract0  <- substr(df30$GEOID, 11, 20)
# View(df30)

df31_17 <- df30 %>%
  dplyr::select(Year, Percent, Count, Tract,  tract0, Neighborhood, GEOID, Denominator) %>%
  dplyr::filter(Year =='2017')
# View(df31_17)


# remove.packages(rlang)
# sessionInfo()


# vars <- c("bn44511", "bn44512", "bn44522")
# as.numeric(vars)



#### Sum of values - group by tract

df11 <- df10 %>%
  dplyr::group_by(tract0) %>%
  summarise(cnt1=sum(bn44511), cnt2=sum(bn44512)) %>%
  mutate(sum1=cnt1+cnt2)
  
# View(df11)





#### Three tables merged
comb0 <- df20 %>%
  dplyr::left_join(df11, by="tract0") %>%
  dplyr::left_join(df31_17, by='tract0')

# View(comb0)

# 12/172020

# Test added 12/26/2020

 



## Social Blocks 2001-2010



#### DATASET2: Social Block data(2000-2010) multiple files imported 2/19/21


list.name <- c(2000:2010)

for(i in c(list.name)){
  obj_name <- paste('socal_blocks_someemps_2010b', i, sep='_')
  file_name <- file.path('C:/Users/Dongwoo/Documents/Research/Data Warehouse/Built_Environment',paste(obj_name,'dta', sep ='.'))
  input <- read.dta13(file_name)
  assign(obj_name, value = input)
}


# View(socal_blocks_someemps_2010b_2003)

# Next step: Add year indicator and rbind
df_all <- rbind(socal_blocks_someemps_2010b_2000,socal_blocks_someemps_2010b_2001)
View(df_all)



## https://stackoverflow.com/questions/50019236/rbind-in-a-loop-in-r

for (i in 2000:2010) {
  for (j in 2000:i) {
    if(i==j) { next }
    df_first = paste0('socal_blocks_someemps_2010b_', i)
    df_second = paste0('socal_blocks_someemps_2010b_', j)
    expr_rbind = paste0("rbind(",df_first,",",df_second,")")
    expr_store_as = paste0(df_first,df_second)
    expr_final = paste0(expr_store_as," = ",expr_rbind)
    eval(parse(text=expr_final))
  }
}

expr_final

View(expr_rbind)








  
  
# install.packages("readxl")
# install.packages("scales")
# install.packages("rlang")
# install.packages("tidyverse")
# install.packages("readr")
# install.packages("readstata13")
# library(readstata13)
# library(foreign)
# library(rlang)



# install.packages("foreign")
# install.packages("haven")
# install.packages("readxl")



