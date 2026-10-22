# Healthcare Performance Analytics

## Overview

This project analyzes healthcare performance data from the Portuguese National Health Service, with a focus on emergency department activity across different healthcare regions.

The objective is to transform raw healthcare data into meaningful insights using a complete data analytics workflow involving Python, SQL Server and Power BI.

The project explores emergency demand, waiting times, hospitalization rates and triage priority patterns across Portuguese healthcare regions between November 2016 and September 2026.

---

## Project Objectives

The main goals of this project are to:

- Analyze the evolution of emergency department activity over time.
- Compare healthcare performance across different regions.
- Evaluate average waiting times between triage and first medical observation.
- Analyze hospitalization rates following emergency visits.
- Explore the proportion of emergency visits classified with green or blue priority.
- Identify temporal and regional patterns in healthcare activity.
- Build an interactive Power BI dashboard for data exploration and decision support.

---

## Dataset

The dataset contains **84,677 records** covering the period from:

**01 November 2016 to 19 September 2026**

The main variables are:



- `periodo` : Date of the observation 
- `ars`: Healthcare region 
- `indicador` :  Healthcare performance indicator 
- `valor` : Indicator value 
- `unidade` : Unit of measurement 
- `id` : Unique record identifier 
- `ano` :  Year 
- `mes` :  Month 
- `trimestre` :  Quarter 

### Healthcare Regions

The dataset includes:

- ARS Norte
- ARS Centro
- ARS Lisboa e Vale do Tejo
- ARS Alentejo
- ARS Algarve
- Portugal Continental

`Portugal Continental` represents the aggregated value for mainland Portugal and is therefore excluded from some regional comparisons.

---

## Indicators

The analysis focuses on four main indicators:

1. Estimated number of emergency episodes
2. Average waiting time between triage and first medical observation
3. Daily hospitalization rate following emergency attendance
4. Daily rate of emergency visits classified with green or blue priority

---

## Data Quality

The initial dataset contained:

- **84,677 rows**
- **6 columns**
- No null values
- No duplicated rows

During the data quality assessment, ARS Algarve was found to contain fewer observations for some indicators.

These correspond to **missing observations rather than null values**, meaning that some combinations of date, region and indicator are absent from the dataset.

No artificial values were created to replace these observations.

---

## Data Preparation

Data cleaning and preparation were performed using **Python and Pandas**.

Main steps included:

- Converting the `periodo` column to datetime format.
- Validating missing and duplicated values.
- Validating the date range.
- Creating additional temporal variables:
- Year
- Month
- Quarter
- Exporting the cleaned dataset for further analysis.

The cleaned dataset is stored in:

data/processed/healthcare-cleaned.csv


---

## SQL Analysis

The cleaned dataset was imported into **SQL Server** for analytical querying.

The SQL analysis was divided into several scripts:


- data_overview.sql 
- Emergency_Episodes_Analysis.sql
- regional_analysis.sql
- waiting_time_analysis.sql


The SQL analysis includes:

- Dataset validation
- Record counts
- Date range validation
- Average emergency episodes by region
- Emergency activity by year and month
- Average waiting time by region
- Hospitalization rate comparisons
- Green/Blue priority rate comparisons
- Regional performance analysis

---

## Power BI Dashboard

The final dashboard was developed in **Power BI** and connected to the SQL Server database.

The dashboard contains three main pages.

### 1. Healthcare Performance Overview

Provides a high-level overview of the main healthcare indicators.

Main KPIs:

- Average Emergency Episodes
- Average Waiting Time
- Average Hospitalization Rate
- Average Green/Blue Priority Rate

Additional visualizations include:

- Emergency episodes by year
- Waiting time by year
- Emergency episodes by region
- Hospitalization rate by region

Interactive filters allow users to explore the data by region and date.

---

### 2. Regional Performance Analysis

Focuses on comparing healthcare performance between the Portuguese healthcare regions.

The page includes:

- Average emergency episodes by region
- Average waiting time by region
- Average hospitalization rate by region
- Average green/blue priority rate by region

`Portugal Continental` is excluded from regional comparison charts because it represents an aggregated mainland value rather than an individual region.

---

### 3. Trends & Insights

This page explores temporal patterns and relationships between healthcare indicators.

Visualizations include:

- Average emergency episodes by month
- Average waiting time by month
- Emergency episodes vs waiting time by region
- Average hospitalization rate by year

A scatter plot is used to explore the relationship between emergency demand and waiting time across regions.

---

## Key Insights

Some of the main patterns identified during the analysis include:

- Emergency activity experienced a significant decrease around 2020, followed by a recovery in subsequent years.
- Emergency demand differs substantially between healthcare regions.
- ARS Norte and ARS Lisboa e Vale do Tejo present higher average emergency activity than smaller regions.
- Waiting times vary considerably across regions.
- Regions with higher emergency demand tend to show higher waiting times, although the relationship is not perfectly linear.
- Hospitalization and green/blue priority rates also show relevant regional differences.
- Monthly patterns indicate some variation in emergency activity and waiting times throughout the year.

> Note: Data for 2026 is only available until 19 September 2026, so annual values for 2026 should be interpreted as partial-year results.

---

## Technologies Used

### Python

- Pandas
- Matplotlib
- Jupyter Notebook

### SQL

- SQL Server
- SQL Server Management Studio
- SQL queries for aggregation and analysis

### Business Intelligence

- Power BI
- DAX
- Interactive dashboards and slicers

### Development Tools

- Visual Studio Code
- Git
- GitHub

---

## Project Structure

- data/ - raw and cleaned datasets
- notebooks/ - data understanding, cleaning and exploratory analysis
- sql/ - SQL queries used for analysis
- powerbi/ - Power BI dashboard
- images/ - dashboard screenshots


---

## Workflow

Raw Healthcare Data -> Data Understanding & Cleaning (Python + Pandas) -> Cleaned Dataset -> Data Analysis & Aggregation (SQL Server) -> Interactive Dashboard (Power BI) 

---

## Dashboard Preview

Screenshots of the Power BI dashboard can be found in the `images/` folder.


---

## Author

**Rodrigo Silva**

Bioinformatics graduate and MSc Data Science student with interests in Data Analytics, Business Intelligence and Data Science.

- GitHub: [rodrigosilva1936](https://github.com/rodrigosilva1936)
