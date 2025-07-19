-- Combine the menu_items and order_details tables into a single table

SELECT 
    *
FROM
    order_details o
        JOIN
    menu_items m ON m.menu_item_id = o.item_id;

-- What were the least and most ordered items? What categories were they in?

SELECT 
    m.item_name,
    m.category,
    COUNT(o.order_details_id) AS order_count
FROM
    order_details o
        JOIN
    menu_items m ON m.menu_item_id = o.item_id
GROUP BY m.item_name , m.category
ORDER BY order_count DESC
LIMIT 1;


-- What were the top 5 orders that spent the most money?

SELECT 
    o.order_id, ROUND(SUM(price), 2) AS total_amt
FROM
    order_details o
        JOIN
    menu_items m ON m.menu_item_id = o.item_id
GROUP BY o.order_id
ORDER BY total_amt DESC
LIMIT 5;

-- View the details of the top 5 highest spend orders. Which specific items were purchased?

SELECT 
    category, COUNT(*)
FROM
    order_details o
        JOIN
    menu_items m ON m.menu_item_id = o.item_id
WHERE
    order_id IN (330 , 440, 1957, 2075, 2675)
GROUP BY category;

