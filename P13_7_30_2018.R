# install.packages("downloader")
# library(downloader) ##use install.packages to install
# url <- "https://ggplot2.tidyverse.org/reference/msleep.html"
# filename <- "femaleMiceWeights.csv"
# download(url, destfile=filename)
# data <- read.csv(filename)

install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
msleep <- read.csv(url)
head(msleep)
# E1
class(msleep)
# E2
msleep %>%
      filter(order == "Primates") %>%
      head 
# E3      
msleep %>%
  filter(order == "Primates") %>%
  class 

#E4
msleep %>%
  filter(order == "Primates") %>%
  select(sleep_total) %>%
  class
# E5
#learn the function unlist
#?unlist
msleep %>%
  filter(order == "Primates") %>%
  select(sleep_total) %>%
  unlist %>%
  mean
# E6
msleep %>%
  filter(order == "Primates") %>%
  summarise(mean(sleep_total))

