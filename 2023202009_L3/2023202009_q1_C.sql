UPDATE SSDLab.menu SET price = price - 1 WHERE food_type = 'veg';
UPDATE SSDLab.menu SET price = price - 5 WHERE food_type = 'non-veg';

SELECT *
FROM SSDLab.menu