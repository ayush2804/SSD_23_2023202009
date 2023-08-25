SELECT dish_name,price
FROM SSDLab.menu
WHERE price>(SELECT MAX(price) AS "max_veg"
FROM SSDLab.menu
WHERE food_type = 'veg');