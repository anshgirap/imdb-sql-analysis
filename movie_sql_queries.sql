-- Total number of movies
SELECT 
    COUNT(*) AS total_movies
FROM
    imdb_movies;
    
-- Movies released per year
SELECT year, COUNT(*) AS movies_released
FROM imdb_movies
GROUP BY year
ORDER BY year;

-- Average rating by year
SELECT year, AVG(rating) AS avg_rating
FROM imdb_movies
GROUP BY year
ORDER BY year;

-- Top 10 movies by rating
SELECT title,rating FROM imdb_movies
ORDER BY rating DESC
limit 10;

-- Top 10 movies by Revenue
SELECT title,revenue_millions FROM imdb_movies
ORDER BY revenue_millions DESC
limit 10;

-- Top 10 movies by Votes
SELECT 
    title, votes
FROM
    imdb_movies
ORDER BY votes DESC
LIMIT 10;

-- Top directors by average movie rating
SELECT director,AVG(rating) AS avg_rating_by_directors
FROM imdb_movies
GROUP BY director
ORDER BY avg_rating_by_directors DESC;

-- Movies with runtime over 150 minutes
SELECT title,runtime_minutes FROM imdb_movies
WHERE runtime_minutes > 150;

-- Movie rating bracket
SELECT 
    CASE
        WHEN rating >= 8 THEN 'Excellent'
        WHEN rating >= 6 THEN 'Good'
        ELSE 'Poor'
    END AS rating_category,
    COUNT(*) AS total_movies
FROM
    imdb_movies
GROUP BY rating_category;

-- Correlation between rating and revenue
SELECT 
    (AVG(rating * revenue_millions) - AVG(rating) * AVG(revenue_millions)) / 
    (STDDEV(rating) * STDDEV(revenue_millions)) AS rating_revenue_correlation
FROM 
    imdb_movies
WHERE 
    revenue_millions IS NOT NULL AND rating IS NOT NULL;