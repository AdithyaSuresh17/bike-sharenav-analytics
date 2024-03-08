library(tidyverse)
library(readr)
library(dpylr)
library(janitor)
library(chron)

#importing the combined file and checking it
df<-read_csv("/Users/adithyasuresh/Documents/analytics project/combined file/cleaned_data_final.csv")
head(df)

#converting the hh:mm:ss format to just minutes for easier calculations
ride_times <- times(df$ride_data)
time_components <- strsplit(as.character(ride_times), ":", fixed = TRUE)
hours <- as.numeric(sapply(time_components, `[`, 1))
minutes <- as.numeric(sapply(time_components, `[`, 2))
seconds <- as.numeric(sapply(time_components, `[`, 3))

#calculating total minutes
df$ride_data_minutes <- hours * 60 + minutes + seconds / 60

#calculating mean 
mean_ride_data_minutes <- mean(df$ride_data_minutes, na.rm = TRUE)

#calculating median
median_ride_data_minutes <- median(df$ride_data_minutes, na.rm = TRUE)

#calculating Mode 
Mode <- function(x) {
       ux <- unique(x)
       ux[which.max(tabulate(match(x, ux)))]
}
mode_ride_data_minutes <- Mode(df$ride_data_minutes)


#calculating mean minutes for members and casuals
target_value <- "casual"
mean_ride_data_minutes <- mean(df$ride_data_minutes[df$member_casual == target_value], na.rm = TRUE)
mean_ride_data_minutes 

target_value <- "member"
mean_ride_data_minutes <- mean(df$ride_data_minutes[df$member_casual == target_value], na.rm = TRUE)
mean_ride_data_minutes 

#calculating number of riders per day
rides_by_day <- df %>%
  group_by(day_of_week) %>%
  summarise(rides_count = n())

# Calculate the mode of the day_of_week value for each type of member_casual
mode_by_member_casual <- df %>%
  group_by(member_casual) %>%
  summarise(mode_day_of_week = Mode(day_of_week))
mode_by_member_casual

#Calculate the ride per day data for each member type
rides_by_day_member_casual <- df %>%
  group_by(day_of_week, member_casual) %>%
  summarise(rides_count = n())

#Rideable bike type analysis 
rideable_type_counts <- df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(ride_count = n())
most_popular_ride_type <- rideable_type_counts %>%
  group_by(member_casual) %>%
  top_n(1, ride_count) %>%
  ungroup()

#Mean ride_data_minutes and ride_count for each member_casual type and rideable_type:
rideable_type_analysis <- df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(mean_ride_data_minutes = mean(ride_data_minutes, na.rm = TRUE),
            ride_count = n())
