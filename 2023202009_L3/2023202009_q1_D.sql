SELECT food_type, AVG(price) AS "avg_food_type"  
FROM SSDLab.menu
WHERE price>=400  
GROUP BY food_type
ORDER BY avg_food_type DESC;