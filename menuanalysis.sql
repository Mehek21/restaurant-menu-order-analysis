-- Exploring Menu table
SELECT 
    *
FROM
    menu_items;

-- find the number of items on the menu
SELECT 
    COUNT(*)
FROM
    menu_items;

-- What are the least and most expensive items on the menu?
SELECT 
    *
FROM
    menu_items
ORDER BY price
LIMIT 1;
SELECT 
    *
FROM
    menu_items
ORDER BY price DESC
LIMIT 1;

-- How many Italian dishes are on the menu? 

SELECT 
    COUNT(*)
FROM
    menu_items
WHERE
    category = 'Italian';

-- What are the least and most expensive Italian dishes on the menu?

SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price
LIMIT 1;
SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price DESC
LIMIT 1;

-- How many dishes are in each category? 

SELECT 
    category, COUNT(*) AS total_dishes
FROM
    menu_items
GROUP BY category;

-- What is the average dish price within each category?
SELECT 
    category, AVG(price) AS average_price
FROM
    menu_items
GROUP BY category;