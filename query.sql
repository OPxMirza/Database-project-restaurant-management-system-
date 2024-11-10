use restaurant;

-- Join Queries
-- a. Simple Join: List all orders with customer details.
SELECT Orders.order_id, Orders.orderDate, Orders.totalAmount, Customers.firstName, Customers.lastName, Customers.email
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;


-- b. Join with Multiple Tables: List all order details with item information.
SELECT Orders.order_id, MenuItems.Name AS ItemName, OrderDetails.quantity, OrderDetails.price
FROM OrderDetails
JOIN Orders ON OrderDetails.order_id = Orders.order_id
JOIN MenuItems ON OrderDetails.item_id = MenuItems.item_id;

-- c. Left Join: List all customers and their orders (including those who haven't placed any orders).
SELECT Customers.customer_id, Customers.firstName, Customers.lastName, Orders.order_id, Orders.orderDate
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- Correlated Subqueries
-- a. Find all customers who have placed more than 5 orders.
SELECT firstName, lastName, email
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING COUNT(order_id) > 5
);

-- b. List all menu items with a price higher than the average price of all items.
SELECT Name, price
FROM MenuItems
WHERE price > (SELECT AVG(price) FROM MenuItems);

-- Subqueries
-- a. Simple Subquery: Find the total amount of a specific order by order_id.
SELECT SUM(quantity * price) AS totalAmount
FROM OrderDetails
WHERE order_id = 1;

-- b. Nested Subquery: List all suppliers who supply ingredients that cost more than the average cost of all ingredients.

SELECT supplier_id, Name, contactPerson, email
FROM Suppliers
WHERE supplier_id IN (
    SELECT supplier_id
    FROM Ingredients
    WHERE costPerUnit > (SELECT AVG(costPerUnit) FROM Ingredients)
);

-- c. Subquery with EXISTS: Find all staff who were hired before any current managers.

SELECT firstName, lastName, position
FROM Staff
WHERE hireDate < (SELECT MIN(hireDate) FROM Staff WHERE position = 'Manager');
