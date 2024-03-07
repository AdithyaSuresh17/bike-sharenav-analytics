library(tidyverse)
library(readr)
library(dpylr)
library(janitor)

#Importing Data into the notebook
march_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202303-divvy-tripdata.csv")
april_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202304-divvy-tripdata.csv")
may_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202305-divvy-tripdata.csv")
june_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202306-divvy-tripdata.csv")
july_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202307-divvy-tripdata.csv")
aug_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202308-divvy-tripdata.csv")
sept_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202309-divvy-tripdata.csv")
oct_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202310-divvy-tripdata.csv")
Nov_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202311-divvy-tripdata.csv")
Dec_23<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202312-divvy-tripdata.csv")
Jan_24<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202401-divvy-tripdata.csv")
Feb_24<-read_csv("/Users/adithyasuresh/Documents/analytics project/untitled folder/202402-divvy-tripdata.csv")

#light cleaning of colnames
june_23 <- june_23 %>% 
  rename(ride_data = ride_time)

#Combining data of all columns
comb_12_data <- rbind(march_23, april_23, may_23, june_23, july_23,aug_23, sept_23, oct_23, Nov_23, Dec_23, Jan_24, Feb_24)

#using clean_names function to maintain good naming structure(and to make sure)
comb_12_data %>% 
  clean_names()

#checking null values in the overall dataframe 
sum(is.na(comb_12_data))

#Removing all such rows from the df
comb_12_data_na <- na.omit(comb_12_data)
sum(is.na(comb_12_data_na))

#Counting rows which have there starting date/time > than their ending data/time
count <- comb_12_data_na %>%
filter(started_at > ended_at) %>%
nrow()
print(count)

#Removing all such records from the dataframe
comb_12_data_cleaned <- comb_12_data_na %>%
  filter(started_at <= ended_at)

#Writing the cleaned file to a csv
write.csv(comb_12_data_cleaned,file = "cleaned_data_final.csv",row.names = FALSE)
