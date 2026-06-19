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


## 🗃️ Data Source
 
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


