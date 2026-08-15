# Spotify Track Popularity Analytics

## Project Overview

This project analyzes Spotify track data to identify the factors associated with track popularity.

The project follows a complete data analytics workflow using Python, MySQL, and Tableau. The raw datasets were inspected, cleaned, transformed, analyzed, loaded into a relational MySQL database, normalized into multiple related tables, and visualized through an interactive Tableau dashboard.

The main analytical question is:

**What factors are associated with track popularity on Spotify?**

The analysis examines artist popularity, artist followers, explicit content, track duration, album characteristics, genres, release periods, artists, and individual tracks.

---

## Project Objectives

The project aims to:

1. Clean and prepare Spotify track data for analysis.
2. Validate data quality and remove inconsistencies.
3. Perform exploratory data analysis using Python.
4. Investigate ten research questions related to track popularity.
5. Validate analytical results using SQL.
6. Design a normalized relational database.
7. Create an Entity Relationship Diagram.
8. Build an interactive Tableau dashboard.
9. Translate analytical findings into business insights.

---

## Technology Stack

| Tool | Purpose |
| --- | --- |
| Python | Data cleaning, transformation, EDA, statistical analysis |
| Pandas | Data manipulation and aggregation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Jupyter Notebook | Python analysis environment |
| MySQL | Database storage and SQL analysis |
| MySQL Workbench | Database management and ERD development |
| Tableau Desktop | Dashboard development and visualization |
| Git | Version control |
| GitHub | Project repository and documentation |

---

# 1. Data Preparation

The project began with Spotify track data containing information about tracks, artists, albums, popularity, followers, genres, duration, explicit content, and release dates.

The datasets were inspected in Python to understand:

1. Dataset dimensions
2. Column names
3. Data types
4. Missing values
5. Duplicate records
6. Unique identifiers
7. Numerical distributions
8. Categorical values

The datasets were then cleaned and prepared for analysis.

---

# 2. Data Cleaning

The cleaning process included:

1. Standardizing column names.
2. Checking missing values.
3. Checking duplicate records.
4. Validating track identifiers.
5. Converting numerical fields to appropriate data types.
6. Standardizing release information.
7. Converting track duration into minutes.
8. Validating popularity measures.
9. Preparing explicit content indicators.
10. Cleaning artist genre information.
11. Creating analytical fields such as release year.
12. Preparing the final dataset for SQL and Tableau.

The final cleaned dataset contained:

**8,775 tracks**

This cleaned dataset became the primary analytical dataset used throughout the project.

---

# 3. Exploratory Data Analysis

Exploratory Data Analysis was conducted in Python to understand the structure and behavior of the Spotify data.

The analysis focused on:

1. Track popularity
2. Artist popularity
3. Artist followers
4. Explicit content
5. Track duration
6. Album type
7. Album size
8. Artist genres
9. Release periods
10. Artist performance
11. Individual track performance

Descriptive statistics, grouped aggregations, correlations, and rankings were used to identify patterns in the dataset.

---

# 4. Research Questions

Ten research questions were developed to investigate the factors associated with Spotify track popularity.

## RQ1. Artist Popularity and Track Popularity

**Question**

Is artist popularity associated with track popularity?

A correlation analysis was conducted between artist popularity and track popularity.

**Result**

Correlation:

**r = 0.45**

**Interpretation**

Artist popularity has a moderate positive relationship with track popularity.

Tracks from more popular artists tend to have higher popularity scores, although artist popularity alone does not fully explain track performance.

---

## RQ2. Artist Followers and Track Popularity

**Question**

Is the number of artist followers associated with track popularity?

**Result**

Correlation:

**r = 0.23**

**Interpretation**

Artist followers have a weak positive relationship with track popularity.

Follower count alone is therefore a relatively weak predictor of individual track performance.

An artist may have a large follower base without every released track achieving equally high popularity.

---

## RQ3. Explicit Content and Track Popularity

**Question**

Do explicit tracks have different average popularity compared with non explicit tracks?

| Content Type | Track Count | Average Popularity |
| --- | ---: | ---: |
| Explicit | 2,191 | 57.54 |
| Non Explicit | 6,584 | 50.49 |

**Interpretation**

Explicit tracks have higher average popularity in this dataset.

The difference is approximately:

**7.05 popularity points**

This represents an association within the dataset and should not be interpreted as evidence that explicit content causes higher popularity.

---

## RQ4. Track Duration and Popularity

Tracks were grouped according to duration.

| Duration Group | Track Count | Average Popularity |
| --- | ---: | ---: |
| Short | 434 | 38.38 |
| Standard | 6,146 | 52.61 |
| Long | 2,026 | 54.53 |
| Very Long | 169 | 47.53 |

**Interpretation**

Long tracks recorded the highest average popularity at **54.53**.

Standard length tracks also performed strongly at **52.61**.

Short tracks had substantially lower average popularity.

---

## RQ5. Album Type and Track Popularity

Track popularity was compared across different album types.

| Album Type | Average Popularity |
| --- | ---: |
| Album | 55.53 |
| Compilation | 40.51 |
| Single | 46.11 |

**Interpretation**

Tracks classified as part of albums had the highest average popularity in the dataset.

Compilation tracks recorded the lowest average popularity.

---

## RQ6. Album Size and Track Popularity

Albums were grouped according to the number of tracks they contained.

| Album Size | Average Popularity |
| --- | ---: |
| Small | 46.01 |
| Medium | 56.34 |
| Large | 56.15 |
| Very Large | 47.09 |

**Interpretation**

Medium and large releases showed the strongest average track popularity.

Very small and very large releases performed lower on average.

---

## RQ7. Genre Performance

Artist genre information was separated into individual genres for analysis.

The genre analysis produced:

**7,660 track to genre records**

and:

**424 unique genres in the normalized SQL database**

To reduce the effect of genres represented by very few observations, only genres with at least 30 track records were considered in the main ranking.

Top genres included:

| Genre | Track Count | Average Popularity |
| --- | ---: | ---: |
| Trap Latino | 64 | 73.53 |
| Urbano Latino | 74 | 73.05 |
| Reggaeton | 86 | 71.26 |
| Post Grunge | 36 | 69.78 |
| Indie | 54 | 68.74 |
| Gangster Rap | 33 | 68.09 |
| Latin | 98 | 67.47 |
| West Coast Hip Hop | 40 | 66.78 |
| Hyperpop | 34 | 66.35 |
| K Pop | 93 | 66.17 |

**Interpretation**

Latin oriented genres were strongly represented among the highest popularity genre categories.

Trap Latino recorded the highest average popularity among genres meeting the minimum track threshold.

---

## RQ8. Release Decade and Track Popularity

Tracks were grouped according to release decade.

| Decade | Track Count | Mean Popularity | Median Popularity |
| --- | ---: | ---: | ---: |
| 1950 | 7 | 53.57 | 58.0 |
| 1960 | 50 | 52.66 | 57.5 |
| 1970 | 80 | 63.70 | 72.0 |
| 1980 | 100 | 59.68 | 64.0 |
| 1990 | 406 | 51.05 | 58.0 |
| 2000 | 937 | 53.09 | 57.0 |
| 2010 | 3,827 | 51.96 | 58.0 |
| 2020 | 3,368 | 51.99 | 57.0 |

The 1950s were excluded from the main Tableau comparison because the decade contained only seven tracks.

**Interpretation**

Among decades with sufficient representation, tracks from the 1970s had the highest average popularity.

The dataset is heavily concentrated in the 2010s and 2020s, so decade comparisons should be interpreted with consideration of the uneven sample sizes.

---

## RQ9. Top Performing Artists

Artists with at least five tracks were ranked according to average track popularity.

| Artist | Track Count | Average Popularity |
| --- | ---: | ---: |
| Alex Warren | 5 | 83.40 |
| Red Hot Chili Peppers | 9 | 80.89 |
| Arctic Monkeys | 10 | 79.80 |
| sombr | 15 | 79.67 |
| Benson Boone | 7 | 79.00 |
| Sabrina Carpenter | 37 | 77.95 |
| XXXTENTACION | 8 | 77.75 |
| Gracie Abrams | 8 | 76.38 |
| Tame Impala | 13 | 75.00 |
| Lola Young | 8 | 74.75 |

**Interpretation**

Alex Warren recorded the highest average track popularity among artists meeting the minimum five track requirement.

The minimum track threshold helps prevent artists represented by only one unusually popular track from dominating the ranking.

---

## RQ10. Most Popular Tracks

Tracks were ranked according to track popularity.

| Track | Artist | Popularity | Release Year |
| --- | --- | ---: | ---: |
| The Fate of Ophelia | Taylor Swift | 100 | 2025 |
| Golden | HUNTR/X | 99 | 2025 |
| Opalite | Taylor Swift | 97 | 2025 |
| Man I Need | Olivia Dean | 95 | 2025 |
| Elizabeth Taylor | Taylor Swift | 95 | 2025 |
| BIRDS OF A FEATHER | Billie Eilish | 94 | 2024 |
| Soda Pop | Saja Boys | 94 | 2025 |
| Father Figure | Taylor Swift | 94 | 2025 |
| CANCELLED! | Taylor Swift | 93 | 2025 |
| Actually Romantic | Taylor Swift | 93 | 2025 |

**Interpretation**

Recent releases dominate the highest popularity rankings in the dataset.

Taylor Swift is particularly prominent among the highest ranked individual tracks.

---

# 5. MySQL Database

After completing the Python cleaning process, the cleaned Spotify dataset was loaded into MySQL.

The primary analytical table was:

```text
spotify_tracks

The table contains 8,775 track records.

The MySQL database was used to:

Validate Python results.
Perform SQL based analytical queries.
Create relational tables.
Establish primary and foreign keys.
Normalize the dataset.
Create the database model used for the ERD.
6. Database Normalization

The original analytical dataset contains artist, album, track, and genre information within a single structure.

To demonstrate relational database design, the data was normalized into five core tables:

artists
albums
tracks
genres
track_genres

The original spotify_tracks table was retained as an analytical and staging table.

Artists Table

Stores unique artist information.

Key fields include:

artist_id
artist_name
artist_popularity
artist_followers

artist_id serves as the primary key.

Albums Table

Stores album information.

Key fields include:

album_id
album_name
album_release_date
release_year
album_total_tracks
album_type
artist_id

album_id serves as the primary key.

artist_id serves as a foreign key linking albums to artists.

Tracks Table

Stores individual track information.

Key fields include:

track_id
track_name
track_number
track_popularity
explicit
track_duration_min
album_id
artist_id

track_id serves as the primary key.

album_id links tracks to albums.

artist_id links tracks to artists.

Genres Table

Stores unique genre categories.

Key fields include:

genre_id
genre_name

The normalized SQL database contains:

424 genres

Track Genres Table

Because one track can be associated with genre information that produces multiple track to genre relationships, a junction table was created.

track_id
genre_id

Together these fields represent the track to genre relationship.

The table contains:

7,660 track to genre relationships

Integrity checks confirmed:

Missing Track Relationships: 0
Missing Genre Relationships: 0
7. Entity Relationship Model

The final normalized relational model contains five entities:

ARTISTS
    |
    | one to many
    |
ALBUMS
    |
    | one to many
    |
TRACKS
    |
    | one to many
    |
TRACK_GENRES
    |
    | many to one
    |
GENRES

Artists also have a direct one to many relationship with tracks.

The track_genres table acts as the junction table connecting tracks and genres.

The ERD was created in MySQL Workbench using the reverse engineering functionality.

The original spotify_tracks analytical table was intentionally excluded from the final normalized ERD.

8. SQL Analysis

SQL was used to reproduce and validate the analytical findings generated in Python.

The SQL analysis covered:

Artist popularity and track popularity
Artist followers and track popularity
Explicit versus non explicit content
Track duration groups
Album types
Album sizes
Genre performance
Release decades
Top performing artists
Top performing tracks

This provided an additional validation layer between the Python analysis and Tableau visualization.

9. Tableau Dashboard

The final visualization stage was completed in Tableau Desktop using the MySQL database.

The primary Tableau analytical source was:

spotify_tracks

A separate relational Tableau data source was used for genre analysis:

tracks
track_genres
genres

This prevented the many to many genre relationships from unnecessarily duplicating records in the main analytical dataset.

Dashboard KPIs

The dashboard contains four primary KPIs:

KPI	Result
Total Tracks	8,775
Total Artists	2,546
Average Track Popularity	52.25
Total Albums	5,314
Dashboard Visualizations

The Tableau dashboard contains visualizations covering:

RQ1

Artist Popularity vs Track Popularity

Scatter plot with linear trend line.

RQ2

Artist Followers vs Track Popularity

Scatter plot with linear trend line.

RQ3

Explicit vs Non Explicit Track Popularity

Bar chart.

RQ4

Track Duration vs Popularity

Bar chart ordered:

Short
Standard
Long
Very Long

RQ5

Album Type vs Popularity

Bar chart.

RQ6

Album Size vs Popularity

Bar chart ordered:

Small
Medium
Large
Very Large

RQ7

Top Genres by Average Track Popularity

Horizontal ranking chart.

RQ8

Average Track Popularity by Release Decade

Bar chart.

RQ9

Top Artists by Average Track Popularity

Horizontal ranking chart.

RQ10

Top Tracks by Popularity

Horizontal ranking chart using:

MAX Track Popularity

This prevents duplicate track name records from incorrectly summing popularity scores.

10. Key Findings

The analysis produced several important findings.

Artist popularity matters more than follower count

Artist popularity has a moderate positive relationship with track popularity at r = 0.45.

Artist followers have a weaker relationship at r = 0.23.

This suggests that follower count alone does not adequately represent the likelihood of individual track popularity.

Explicit tracks perform higher on average

Explicit tracks recorded an average popularity of 57.54, compared with 50.49 for non explicit tracks.

Track duration shows meaningful differences

Long tracks recorded the highest average popularity at 54.53, while short tracks recorded substantially lower average popularity at 38.38.

Album characteristics matter

Tracks from albums recorded higher average popularity than tracks classified as singles or compilations.

Medium and large albums also showed higher average track popularity than small and very large releases.

Genre performance varies considerably

Trap Latino and Urbano Latino recorded the highest average popularity among genres meeting the minimum representation requirement.

Historical popularity is not linear

The 1970s recorded the highest average popularity among sufficiently represented decades.

However, the dataset contains considerably more tracks from recent decades, particularly the 2010s and 2020s.

Artist performance is concentrated

Several artists achieved substantially higher average track popularity than the overall dataset average of 52.25.

Alex Warren recorded an average of 83.40 among artists represented by at least five tracks.

11. Business Insights

The results suggest that track popularity is associated with several interacting factors rather than a single characteristic.

Artist popularity appears more strongly associated with track performance than follower count.

Genre positioning also shows substantial differences in average popularity, particularly among Latin oriented genres.

Release characteristics matter as well. Album type, album size, and track duration all show differences in average popularity.

These findings could support:

Music catalog analysis
Artist benchmarking
Release strategy evaluation
Genre portfolio analysis
Content performance monitoring
Playlist and discovery strategy
Marketing prioritization

The results should be interpreted as descriptive associations within the analyzed dataset rather than causal relationships.

12. Project Workflow

The complete analytical pipeline was:

Raw Spotify Data
        ↓
Python Data Inspection
        ↓
Data Cleaning
        ↓
Data Transformation
        ↓
Exploratory Data Analysis
        ↓
Research Questions
        ↓
Cleaned Dataset
        ↓
MySQL Database
        ↓
SQL Analysis
        ↓
Database Normalization
        ↓
ERD
        ↓
Tableau
        ↓
Interactive Analytics Dashboard
        ↓
Business Insights
13. Repository Structure

A recommended project structure is:

spotify_project/
│
├── data/
│   ├── raw/
│   └── clean/
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   └── spotify_analysis.ipynb
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_load_data.sql
│   ├── 04_normalization.sql
│   └── 05_analysis_queries.sql
│
├── figures/
│   ├── spotify_erd.png
│   └── spotify_dashboard.png
│
├── tableau/
│   └── spotify_dashboard.twbx
│
└── README.md

The actual repository structure may differ depending on the final organization of the project files.

14. Data Quality and Analytical Considerations

Several considerations are important when interpreting the analysis.

Unequal group sizes

Some genres and decades contain substantially more tracks than others.

Minimum observation thresholds were therefore applied where appropriate.

Popularity is not causality

Relationships such as artist popularity versus track popularity describe association.

They do not demonstrate that one variable directly causes another.

Current popularity bias

Spotify popularity represents platform performance and may favor currently active or recently popular tracks.

This should be considered when comparing tracks across historical periods.

Genre complexity

Artists may belong to multiple genres.

Genre analysis therefore required normalization and a junction table rather than treating the original genre string as a single category.

15. Conclusion

This project demonstrates an end to end data analytics workflow using Python, SQL, relational database design, and Tableau.

Starting from raw Spotify data, the project progressed through data cleaning, exploratory analysis, research question development, SQL validation, database normalization, ERD creation, and interactive dashboard development.

The analysis indicates that Spotify track popularity is associated with multiple characteristics.

Artist popularity shows a stronger relationship with track popularity than artist follower count. Explicit tracks have higher average popularity within the dataset. Track duration, album type, album size, genre, release period, and artist characteristics also show meaningful differences in performance.

Rather than identifying a single determinant of popularity, the project demonstrates that track performance reflects a combination of artist strength, content characteristics, release strategy, genre positioning, and temporal factors.

Author

Dr. Jan Noel Vero

Data Analytics Project

Ironhack Data Analytics Bootcamp

2026


One thing I would add before you push this to GitHub is the **actual ERD image and Tableau dashboard screenshot** under the relevant sections. That will make the README much stronger as a portfolio piece because a recruiter can understand the entire Python to SQL to Tableau workflow without opening every project file. 