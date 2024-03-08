# Analyzing trends within consumer Bike-Sharing data 
This repository comprises both the code related to a data analysis project carried out on Cyclistic's public bike share data. The project is structured into distinct stages, encompassing data cleansing, analysis, visualization, and the formulation of recommendations. Within this README, you'll find a breakdown of each phase along with significant discoveries.

## Project Summary
Cyclistic, a bike-sharing company, has shared data regarding member types, ride timings, start and end addresses, among other factors. This project seeks to analyze the data to uncover trends and distinctions in usage patterns between annual and casual members and hence, provide suggestions to convert casual members to annual members.


## Stages of Analysis
* ***Data Cleaning***:  Preparing the dataset by removing inconsistencies and errors.
* ***Data Analysis***: Examining the dataset to derive insights and patterns.
* ***Trend Visualization***: Representing data trends visually for easier interpretation.
* ***Inferences***: Extracted conclusions and insights.
* ***Suggestions***: Offering recommendations based on the analysis results to improve decision-making.


## Data Cleaning Phase
During this phase, validation was conducted on all data sources, and the integrity of data files was confirmed. Furthermore, unprocessed data underwent cleaning and preparation for analysis.Key Steps of this process include:
* Finding the ride time for each record
* Cleaning the column names.
* Removing the null values from the file.
* Removing all rows where there may be errors with respect to the start date and end dates.
* Finally, combining all the records to make a combined, cleaned file.

## Data Analyis Phase
The goal of this stage was to uncover trends and insights from the consolidated and cleaned dataset, with a focus on understanding the distinctions in the usage patterns of Cyclistic between casual and annual members. Key steps of this stage include:
* Converting the date time format to a more analysis-friendly format.
* Perform distribution analysis on the time spent on the bike.
* Find the average ride length per day and per user
* Finding out most travelled day of the week per user type.
* Bike type preferences among users.

## Visualisation
3 Main visualizations were performed to justify out suggestions, these include:
* Rides per day grouped by member type.
* Average ride length data per bike type.
* Ride length per month grouped my member type.

## Inferences
Based on the visualizations and analysis we find the following inferences:
* Based on the data, it is evident that casual members utilize bikes for extended durations compared to annual members, suggesting that casual users typically engage in leisurely activities with the service, whereas annual members utilize it primarily for shorter commuting purposes.
  
* This point is complemented by the fact that the data indicates that casual users primarily use bikes for leisure on Sundays, while annual members show consistent usage throughout the week, suggesting different user behaviors and needs. This insight can guide adjustments in bike availability, targeted marketing strategies, infrastructure planning, and promotions to enhance user experience and support sustainable transportation options.
  
* However, annual members mostly stick to classic bikes and hardly ever use docked bikes, while casual riders are more open to trying out different bike types.
  
* The data suggests that casual members exhibit an increase in bike usage from the summer months to the winter months, indicating a seasonal trend where usage rises as the weather gets cooler.This difference in usage patterns implies that casual members may be more influenced by external factors like weather or tourist seasons, whereas annual members likely use bikes as a regular mode of transportation regardless of external conditions.


## Suggestions
From the inferences above the following suggestions can be made:

* Offer flexible membership options that cater to varying needs, allowing casual users to transition seamlessly into annual memberships as they realize the benefits of consistent bike usage.

* Focus on improving bike availability, especially during peak usage times and in popular leisure areas frequented by casual users, by implementing strategies such as expanding bike stations, increasing bike fleets, and optimizing bike distribution based on usage patterns to ensure convenient access for both casual and annual members.

* Develop targeted marketing campaigns and promotions that highlight the benefits of annual membership, emphasizing factors such as cost-effectiveness, convenience, and sustainability, and offer personalized incentives or rewards for casual users who upgrade to annual memberships to encourage their long-term commitment to the bike-sharing service.

## Conclusion
The project highlights differences in bike-sharing usage between casual and annual members, emphasizing the need for tailored approaches. Understanding these distinctions can inform strategies to convert casual users into committed annual members, thereby promoting sustainable transportation options and enhancing user satisfaction.
