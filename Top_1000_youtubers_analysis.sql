
-- Overall view of the data set --
SELECT
COUNT(DISTINCT Country) AS Total_Countries,
COUNT(DISTINCT Categories) AS Total_Categories,
AVG(Suscribers) As Avg_Suscribers,
AVG(Visits) As Avg_Visits,
AVG(Likes) As Avg_Likes,
AVG(Comments) As Avg_Comments
FROM Top_1000_Youtuber

-- Most Category Channels --
SELECT 
Categories,
COUNT(Username) AS Total_Channels
FROM Top_1000_Youtuber
GROUP BY Categories
ORDER BY Total_Channels DESC

-- Top Country Channels --
SELECT 
Country,
COUNT(Username) AS Total_Channels
FROM Top_1000_Youtuber
GROUP BY Country
ORDER BY Total_Channels DESC

-- Average visits, Likes, and comments per video for the top 10 youtubers --
SELECT TOP 10
Username,
AVG(Suscribers) AS avg_Suscribers,
AVG(Visits) AS avg_Visits,
AVG(Likes) AS avg_Likes,
AVG(Comments) AS avg_Comments
FROM Top_1000_Youtuber
GROUP BY Username
ORDER BY avg_Suscribers DESC

-- Most Watched Category --
SELECT
Categories,
AVG(Suscribers) AS avg_Suscribers,
AVG(Visits) AS avg_Visits,
AVG(Likes) AS avg_Likes,
AVG(Comments) AS avg_Comments
FROM Top_1000_Youtuber
GROUP BY Categories
ORDER BY avg_Suscribers DESC

-- Subscribers interaction across different countries  --
SELECT
Country,
AVG(Suscribers) AS avg_Suscribers,
AVG(Visits) AS avg_Visits,
AVG(Likes) AS avg_Likes,
AVG(Comments) AS avg_Comments
FROM Top_1000_Youtuber
GROUP BY Country
ORDER BY avg_Suscribers DESC