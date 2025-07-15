CREATE DATABASE IF NOT EXISTS movies_db;

USE movies_db;

CREATE TABLE IF NOT EXISTS imdb_movies (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    director VARCHAR(100),
    actors TEXT,
    year INT,
    runtime_minutes INT,
    rating FLOAT,
    votes INT,
    revenue_millions FLOAT,
    metascore INT
);