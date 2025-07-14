This project analyzes the IMDb 1000 Movies Dataset (2006–2016) using MySQL.  
It covers key statistics such as movie ratings, revenue, vote count, yearly trends, and more.

## 📁 Dataset

**IMDb 1000 Movies (2006–2016)**

- Source: Kaggle
- Records: 1000 rows
- Columns: Title, Genre, Description, Director, Actors, Year, Runtime, Rating, Votes, Revenue, Metascore

## ⚙️ Tools Used

- MySQL Workbench
- SQL (MySQL Syntax)
- CSV Import
- Data Cleaning: Jupyter Notebook + Pandas

## 🧼 Data Cleaning

Performed in Python (Jupyter Notebook) before importing into MySQL:

- Removed `Description` column
- Cleaned `Revenue (Millions)` and `Runtime (Minutes)` columns
- Converted `Year` and `Rating` to numeric formats
- Dropped NaNs and cleaned column names

## 📌 Key SQL Queries

- 🎥 Total number of movies
- 📅 Movies released per year
- ⭐ Top 10 highest-rated movies
- 💰 Top 10 highest revenue movies
- ⏱️ Movies with runtime over 150 mins
- 🗳️ Most voted movies
- 📊 Movie rating bracket (Excellent / Good / Poor)

## 🗂️ Files

- `movie_data_cleaned.csv` – Cleaned dataset
- `schema.sql` – Table creation SQL
- `movie_sql_queries.sql` – Analysis queries
- `README.md` – This file
- `LICENSE` – MIT License

---
