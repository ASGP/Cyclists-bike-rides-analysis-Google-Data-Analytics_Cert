### Google Data Analytics Capstone Project

## 📋 Table of Contents
- [Project Overview](#project-overview)
- [Business Task](#business-task)
- [Data Source](#data-source)
- [Tools Used](#tools-used)
- [Project Structure](#project-structure)
- [Data Cleaning & Processing](#data-cleaning--processing)
- [Analysis Summary](#analysis-summary)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [Dashboard](#dashboard)
- [How to Reproduce](#how-to-reproduce)
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
SQL Queries script [bigquery-sql.sql]

## 📊 Analysis Summary
 
Exploratory data analysis was performed in **Google Colab** using Python (Pandas, Matplotlib). The analysis covered 5 key areas:
 
### 1. Ride Duration
- Casual riders take significantly **longer rides** than members on average
- Members cluster around short, consistent ride durations (5–15 minutes)
- Casuals show a wider distribution, with many rides in the 20–40 minute range
- This suggests members use bikes for quick, purposeful commutes while casuals use them for leisure
### 2. Weekly Usage
- Members ride more on **weekdays** (Monday–Friday), peaking mid-week
- Casual riders peak on **weekends** (Saturday and Sunday)
- This pattern strongly supports the hypothesis that members are commuters and casuals are leisure/tourist riders
### 3. Monthly & Seasonal Trends
- Both groups peak in **summer months** (July–August) and drop in winter (December–January)
- Casual riders show a steeper seasonal curve — their ridership drops more dramatically in winter
- Members maintain relatively more consistent ridership year-round (commuting need persists in winter)
### 4. Bike Type Preference
- **Classic bikes** are the most used overall
- Members strongly favor **classic bikes**
- Casuals show relatively higher usage of **electric bikes** compared to members
- Docked bikes are a small fraction of total rides
### 5. Time of Day
- Members show a clear **double peak**: 8 AM and 5 PM (classic commute pattern)
- Casuals show a **single afternoon peak**: gradually rising from noon, peaking around 3–5 PM
- During weekday commute hours (6–9 AM, 4–7 PM), members dominate ridership
- This is the strongest evidence that members primarily use Cyclistic for commuting
> Full analysis notebook: [`python/cyclistic_analysis.ipynb`](python/cyclistic_analysis.ipynb)
 
---
 
## 🔍 Key Findings
 
1. **Members are commuters, casuals are leisure riders** — evidenced by weekday vs weekend patterns, double vs single daily peak, and shorter vs longer ride durations
2. **Casual riders take 2x longer rides than members** — suggesting they extract more "per-ride value" from the system but ride less frequently
3. **Weekend is casual territory** — casual rides spike significantly on Saturday and Sunday while member rides remain steady or drop
4. **Electric bikes are more popular with casuals** — casuals may prefer the lower effort of electric bikes for longer leisure rides
5. **Summer is the best conversion opportunity** — casual ridership peaks in summer, creating a natural window for membership promotions
6. **Top start stations differ by rider type** — certain stations near tourist areas and parks are heavily casual-dominated, while stations near business districts are member-dominated
---
 
## 💡 Recommendations
 
Based on the analysis, here are the top 3 recommendations for converting casual riders into annual members:
 
### Recommendation 1: Weekend & Seasonal Membership Promotions
**Finding it addresses:** Casual riders peak on weekends and in summer
 
Since casual riders are most active on weekends and during summer months, Cyclistic should launch **targeted weekend membership trials** and **summer conversion campaigns** (May–August). A discounted "Summer Pass" or "Weekend Membership" could lower the commitment barrier for casual riders who don't need weekday access.
 
### Recommendation 2: Targeted Digital Marketing at High-Casual Stations
**Finding it addresses:** Casual riders cluster at specific stations near tourist/leisure areas
 
Deploy **in-app notifications and digital ads** at the top casual-dominated stations. When a casual rider unlocks a bike at one of these stations, show them a prompt comparing their current per-ride cost vs the annual membership cost. For frequent casual users, the math often makes membership the obvious financial choice.
 
### Recommendation 3: Electric Bike Membership Incentives
**Finding it addresses:** Casuals show higher electric bike usage
 
Since casual riders prefer electric bikes, offer a **membership tier with discounted or unlimited electric bike access**. This creates a direct, tangible benefit that appeals specifically to casual rider behavior — converting them with something they already value rather than pushing a benefit (e.g. commuter perks) that doesn't match their usage pattern.

