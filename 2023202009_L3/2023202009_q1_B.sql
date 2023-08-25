ALTER TABLE SSDLab.menu
ADD food_type VARCHAR(25);


UPDATE SSDLab.menu
SET food_type = 'non-veg'
WHERE dish_name REGEXP 'chicken?';

UPDATE SSDLab.menu
SET food_type = 'veg'
WHERE dish_name REGEXP 'paneer?';

SELECT *
FROM SSDLab.menu