### Google Data Analytics Capstone Project

## 📋 Table of Contents
- [Project Overview](#project-overview)
- [Business Task](#business-task)
- [Data Source](#data-source)
- [Tools Used](#tools-used)
- [Project Structure](#project-structure)
- [Data Cleaning & Processing](#data-cleaning--processing)
- [Analysis](#analysis)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [Dashboard](#dashboard)
---


## Project Overview
 
This is my capstone project for the **Google Data Analytics Professional Certificate**. The project analyzes 12 months of real-world bike-share trip data from Cyclistic (based on Divvy's Chicago bike-share system) to uncover behavioral differences between casual riders and annual members, and to provide data-driven recommendations to convert casual riders into annual members.
 
**Timeframe of data analyzed:** May 2025 – April 2026
**Total records after cleaning:** 5,695,649 rides
 
---

## Business Task
 
> **"Analyze how annual members and casual riders use Cyclistic bikes differently, and identify opportunities to convert casual riders into annual members."**
 
Three questions guided the analysis:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?
---


## Data Source
 
- **Source:** [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html) (publicly available, provided by Motivate International Inc.)
- **License:** [Data License Agreement](https://www.divvybikes.com/data-license-agreement)
- **Format:** Monthly CSV files
- **Period:** May 2025 – April 2026 (1 Year)

Table Structure as follows

| Column | Description |
|--------|-------------|
| `ride_id` | Unique identifier for each ride |
| `rideable_type` | Type of bike (classic, electric, docked) |
| `started_at` | Ride start timestamp |
| `ended_at` | Ride end timestamp |
| `start_station_name` | Name of start station |
| `start_station_id` | ID of start station |
| `end_station_name` | Name of end station |
| `end_station_id` | ID of end station |
| `start_lat` | Start latitude |
| `start_lng` | Start longitude |
| `end_lat` | End latitude |
| `end_lng` | End longitude |
| `member_casual` | Rider type (member or casual) |
 
---

## Tech Stack 
 
| Tool | Purpose |
|------|---------|
| **Google Cloud Storage** | Raw CSV file storage |
| **Google BigQuery** | Data warehouse, SQL cleaning & analysis |
| **Google Colab (Python/Pandas)** | Exploratory data analysis & visualizations |
| **Tableau Desktop** | Interactive dashboard creation |
| **GitHub** | Portfolio hosting |
 
---

## Data Cleaning & Processing
 
All cleaning was performed in **Google BigQuery** using Standard SQL.
[SQL Queries script](bigquery-sql.sql)

## Analysis

### 1. Ride Duration
- Casual riders take significantly longer rides than members on average.
- The average ride duration for casual riders is approximately 22 minutes, compared to about 12 minutes for members.
- Members cluster around short, consistent ride durations, while casual riders show a much wider distribution.
- Casual riders have a greater proportion of rides lasting 20–40 minutes or longer.
- This suggests that members primarily use Cyclistic bikes for quick, purposeful trips, whereas casual riders use them more for leisure and exploration.

### 2. Weekly Usage
- Members ride more frequently on weekdays (Monday–Friday), with ridership peaking during the middle of the work week.
- Casual riders show the highest activity on weekends, especially Saturdays.
- Weekend ridership among casual users is significantly higher than weekday usage.
- Members maintain relatively consistent usage throughout the week.
- This pattern strongly supports the hypothesis that members are regular commuters while casual riders are recreational or tourist users.

### 3. Monthly & Seasonal Trends
- Both rider groups experience increased ridership during warmer months (Jul - Oct) and decreased ridership during winter (Nov - Feb).
- Ridership peaks during July and August and reaches its lowest levels during December and January.
- Casual riders exhibit a much stronger seasonal pattern, with substantial increases during summer and sharp declines during winter.
- Member ridership remains comparatively stable throughout the year.
- These trends indicate that casual riders are more influenced by weather and seasonal outdoor activities, while members continue riding due to regular transportation needs.

### 4. Bike Type Preference
- Electric bikes are the most frequently used bike type among both rider groups.
- Members generate the highest number of rides on both electric and classic bikes.
- Casual riders show relatively stronger adoption of electric bikes, likely due to convenience and ease of use.
- Classic bikes remain popular, particularly among members.
- Docked bikes account for only a small proportion of total rides.
- The popularity of electric bikes suggests that ease of travel and reduced physical effort are important factors for riders.

### 5. Time of Day
- Members display a clear double-peak riding pattern during commute hours:
  - Morning peak around 7–9 AM
  - Evening peak around 4–6 PM
- Casual riders show a gradual increase in activity throughout the day, peaking during the afternoon and early evening.
- During weekday commute periods, members significantly outnumber casual riders.
- This is one of the strongest indicators that members primarily use Cyclistic bikes for commuting purposes.

### 6. Customer Composition
- Members account for approximately 64% of all rides, making them the largest customer segment.
- Casual riders contribute roughly 36% of total rides.
- Although members generate more rides overall, casual riders represent a significant opportunity for membership conversion.
- Increasing the conversion rate of casual riders could substantially increase recurring revenue.

### 7. Commute-Hour Usage
- During weekday morning and evening commute hours, member ridership greatly exceeds casual ridership.
- Members dominate usage between 6–9 AM and 4–7 PM.
- Casual riders show lower activity during these periods and tend to ride later in the day.
- This further reinforces the conclusion that members rely on Cyclistic as a transportation solution rather than purely recreational service.


## Key Findings
1. Casual riders take longer rides than members and are more likely to use Cyclistic for leisure activities.
2. Members primarily ride during weekday commute hours, while casual riders prefer weekends and afternoons.
3. Casual ridership is highly seasonal and strongly influenced by weather conditions.
4. Electric bikes are the most popular bike type across both customer segments.
5. Members account for the majority of rides and dominate commuting periods.
6. Popular stations are concentrated around recreational and tourist locations, highlighting the importance of casual riders in leisure-oriented areas.

[View Notebook](bike_trips.ipynb)

## Recommendations
 
Based on the analysis, here are the top 3 recommendations for converting casual riders into annual members:
 
### Recommendation 1: Weekend & Seasonal Membership Promotions
**Finding it addresses:** Casual riders peak on weekends and in summer
 
Since casual riders are most active on weekends and during summer months, company should launch **targeted weekend membership trials** and **summer conversion campaigns** (May–August). A discounted "Summer Pass" or "Weekend Membership" could lower the commitment barrier for casual riders who don't need weekday access.
 
### Recommendation 2: Targeted Digital Marketing at High-Casual Stations
**Finding it addresses:** Casual riders cluster at specific stations near tourist/leisure areas
 
Deploy **in-app notifications and digital ads** at the top casual-dominated stations. When a casual rider unlocks a bike at one of these stations, show them a prompt comparing their current per-ride cost vs the annual membership cost. For frequent casual users, the math often makes membership the obvious financial choice.
 
### Recommendation 3: Electric Bike Membership Incentives
**Finding it addresses:** Casuals show higher electric bike usage
 
Since casual riders prefer electric bikes, offer a **membership tier with discounted or unlimited electric bike access**. This creates a direct, tangible benefit that appeals specifically to casual rider behavior — converting them with something they already value rather than pushing a benefit (e.g. commuter perks) that doesn't match their usage pattern.
 
---

## Dashboard
 
View the interactive Tableau dashboard on Tableau and PDF File
[View in Tableau](bike-trips.twb)
[View Dashboard in PDF](Tableau-bike-trips-Dashboard.pdf)
 
**Dashboard A — Cyclistic Bike Share — Core Analysis Dashboar**
- Rides by Day of Week
- Average Ride Duration
- Monthly Ride Trends
- Bike Type Preference
**Dashboard B — Cyclistic Bike Share — Deep Dive Analysis**
- Peak Hours by Member Type
- Bike Type During Commute Hours
- Ride Duration Distribution
- Weekend vs Weekday Comparison
---

## Author
 
**A S G Punchihewa**
---
