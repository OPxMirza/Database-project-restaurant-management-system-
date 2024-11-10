create database restaurant;
use restaurant;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    contact VARCHAR(15),
    email VARCHAR(100),
    address TEXT
);


CREATE 	TABLE AdminSide(
	admin_id int primary key,
    admin_password int (6)
);


CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    position VARCHAR(50),
    contact VARCHAR(15),
    email VARCHAR(100),
    hireDate DATE,
    salary DECIMAL(10, 2)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    contactPerson VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Ingredients (
    ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    unit VARCHAR(50),
    costPerUnit DECIMAL(10, 2),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    orderDate DATETIME,
    totalAmount DECIMAL(10, 2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
    orderDetail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    item_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    reservationDate DATE,
    reservationTime TIME,
    numberOfGuests INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE RestaurantTables (
    table_id INT PRIMARY KEY AUTO_INCREMENT,
    capacity INT
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    ingredient_id INT,
    quantity INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    saleDate DATE,
    totalSales DECIMAL(10, 2)
);