use restaurant;

-- Customers
INSERT INTO Customers (firstName, lastName, contact, email, address)
VALUES
('John', 'Doe', '1234567890', 'john.doe@example.com', '123 Main St'),
('Jane', 'Smith', '0987654321', 'jane.smith@example.com', '456 Oak Ave'),
('Alice', 'Johnson', '5551234567', 'alice.johnson@example.com', '789 Pine Rd');

-- AdminSide
INSERT INTO AdminSide (admin_id, admin_password)
VALUES
(1, 123456),
(2, 654321);

-- Staff
INSERT INTO Staff (firstName, lastName, position, contact, email, hireDate, salary)
VALUES
('Michael', 'Brown', 'Manager', '4445556666', 'michael.brown@example.com', '2020-01-15', 50000.00),
('Emily', 'Davis', 'Chef', '7778889999', 'emily.davis@example.com', '2021-03-10', 40000.00),
('Michael', 'Brown', 'Manager', '4445556666', 'michael.brown@example.com', '2020-01-15', 50000.00),
('Emily', 'Davis', 'Chef', '7778889999', 'emily.davis@example.com', '2021-03-10', 40000.00),
('David', 'Wilson', 'Waiter', '3332221111', 'david.wilson@example.com', '2022-05-20', 25000.00),
('Sarah', 'Taylor', 'Manager', '5556667777', 'sarah.taylor@example.com', '2022-08-01', 55000.00),
('James', 'White', 'Chef', '8889990000', 'james.white@example.com', '2019-11-25', 42000.00),
('Laura', 'Green', 'Waiter', '1112223333', 'laura.green@example.com', '2019-07-05', 26000.00),
('David', 'Wilson', 'Waiter', '3332221111', 'david.wilson@example.com', '2022-05-20', 25000.00);

-- Suppliers
INSERT INTO Suppliers (Name, contactPerson, email)
VALUES
('Best Foods', 'Tom Harris', 'tom.harris@bestfoods.com'),
('Fresh Produce', 'Sarah Lee', 'sarah.lee@freshproduce.com');

-- Ingredients
INSERT INTO Ingredients (Name, unit, costPerUnit, supplier_id)
VALUES
('Tomato', 'Kg', 2.50, 1),
('Cheese', 'Kg', 5.00, 1),
('Lettuce', 'Kg', 1.50, 2),
('Bread', 'Piece', 0.50, 2);

-- MenuItems
INSERT INTO MenuItems (Name, description, price, category)
VALUES
('Burger', 'Delicious beef burger', 8.99, 'Main Course'),
('Salad', 'Fresh garden salad', 5.99, 'Appetizer'),
('Pizza', 'Cheese pizza with tomato sauce', 12.99, 'Main Course');

-- Orders
INSERT INTO Orders (customer_id, orderDate, totalAmount, status)
VALUES
(1, '2023-06-10 12:00:00', 20.97, 'Completed'),
(2, '2023-06-11 18:30:00', 8.99, 'Completed'),
(1, '2023-06-12 13:15:00', 12.99, 'Pending'),
(1, '2023-06-14 10:00:00', 15.99, 'Completed'),
(1, '2023-06-15 14:30:00', 9.99, 'Completed'),
(1, '2023-06-16 12:00:00', 20.99, 'Completed'),
(1, '2023-06-17 16:45:00', 18.99, 'Completed'),
(1, '2023-06-18 19:00:00', 11.99, 'Completed'),
(3, '2023-06-13 19:00:00', 18.98, 'Completed');

-- OrderDetails
INSERT INTO OrderDetails (order_id, item_id, quantity, price)
VALUES
(1, 1, 1, 8.99),
(1, 2, 2, 5.99),
(2, 1, 1, 8.99),
(3, 3, 1, 12.99),
(4, 2, 2, 5.99);

-- Reservations
INSERT INTO Reservations (customer_id, reservationDate, reservationTime, numberOfGuests)
VALUES
(1, '2023-06-15', '19:00:00', 4),
(2, '2023-06-16', '18:00:00', 2),
(3, '2023-06-17', '20:00:00', 6);

-- RestaurantTables
INSERT INTO RestaurantTables (capacity)
VALUES
(4),
(2),
(6),
(8);

-- Inventory
INSERT INTO Inventory (ingredient_id, quantity)
VALUES
(1, 100),
(2, 50),
(3, 200),
(4, 300);

-- Sales
INSERT INTO Sales (saleDate, totalSales)
VALUES
('2023-06-10', 100.00),
('2023-06-11', 200.00),
('2023-06-12', 150.00);
