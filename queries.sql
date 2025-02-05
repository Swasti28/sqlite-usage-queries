1. View all rows in the table
SELECT * FROM usage_data;

2. Count the total number of sessions in the dataset
SELECT SUM(Sessions) AS total_sessions FROM usage_data;

3. Find the top 3 users with the most time spent
SELECT Username, SUM(Time_spent) AS total_time
FROM usage_data
GROUP BY Username
ORDER BY total_time DESC
LIMIT 3;

4. Identify the most used feature (by sessions)
SELECT Feature, SUM(Sessions) AS total_sessions
FROM usage_data
GROUP BY Feature
ORDER BY total_sessions DESC
LIMIT 1;

5. Find the average time spent per session across all features
SELECT AVG(Average_time_spent) AS avg_time_spent FROM usage_data;

6. Get the total sessions recorded on each date
SELECT Date, SUM(Sessions) AS daily_sessions
FROM usage_data
GROUP BY Date
ORDER BY Date;

7. List all users who have participated in more than 100 sessions
SELECT Username, SUM(Sessions) AS total_sessions
FROM usage_data
GROUP BY Username
HAVING total_sessions > 100;

8. Count the number of unique features in the dataset
SELECT COUNT(DISTINCT Feature) AS unique_features FROM usage_data;

9. Find the date with the highest total time spent
SELECT Date, SUM(Time_spent) AS total_time
FROM usage_data
GROUP BY Date
ORDER BY total_time DESC
LIMIT 1;

10. Find the feature with the highest average time per session
SELECT Feature, AVG(Average_time_spent) AS avg_time
FROM usage_data
GROUP BY Feature
ORDER BY avg_time DESC
LIMIT 1;
