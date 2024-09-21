-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 06:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `contact_name`, `contact_email`, `contact_phone`) VALUES
(1, 'ABC Company', 'John Smith', 'john@example.com', '123-456-7890'),
(2, 'XYZ Corporation', 'Jane Doe', 'jane@example.com', '987-654-3210'),
(3, 'LMN Industries', 'Michael Johnson', 'michael@example.com', '456-789-0123'),
(4, 'PQR Ltd.', 'Emily Brown', 'emily@example.com', '321-654-9870'),
(5, 'DEF Enterprises', 'David Lee', 'david@example.com', '789-012-3456'),
(6, 'GHI Corporation', 'Sarah Williams', 'sarah@example.com', '567-890-1234'),
(7, 'JKL Ltd.', 'Robert Jones', 'robert@example.com', '234-567-8901'),
(8, 'MNO Corporation', 'Jessica Taylor', 'jessica@example.com', '890-123-4567'),
(9, 'QRS Industries', 'William Davis', 'william@example.com', '678-901-2345'),
(10, 'STU Company', 'Jennifer Martinez', 'jennifer@example.com', '012-345-6789'),
(11, 'VWX Enterprises', 'Christopher Garcia', 'christopher@example.com', '901-234-5678'),
(12, 'YZA Ltd.', 'Amanda Rodriguez', 'amanda@example.com', '345-678-9012'),
(13, 'BCD Corporation', 'Daniel Hernandez', 'daniel@example.com', '567-890-1234'),
(14, 'EFG Industries', 'Ashley Wilson', 'ashley@example.com', '123-456-7890'),
(15, 'HIJ Company', 'Matthew Lopez', 'matthew@example.com', '890-123-4567'),
(16, 'KLM Enterprises', 'Brittany Martinez', 'brittany@example.com', '234-567-8901'),
(17, 'NOP Ltd.', 'Kevin Perez', 'kevin@example.com', '678-901-2345'),
(18, 'PQS Corporation', 'Stephanie Gonzalez', 'stephanie@example.com', '012-345-6789'),
(19, 'RST Industries', 'Andrew Smith', 'andrew@example.com', '456-789-0123'),
(20, 'UVW Company', 'Melissa Garcia', 'melissa@example.com', '901-234-5678'),
(21, 'WXY Corporation', 'Ryan Johnson', 'ryan@example.com', '234-567-8901'),
(22, 'YZA Ltd.', 'Laura Brown', 'laura@example.com', '678-901-2345'),
(23, 'BCD Corporation', 'Jason Taylor', 'jason@example.com', '012-345-6789'),
(24, 'EFG Industries', 'Nicole Martinez', 'nicole@example.com', '456-789-0123'),
(25, 'HIJ Company', 'Justin Anderson', 'justin@example.com', '890-123-4567');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `position`, `salary`, `warehouse_id`) VALUES
(1, 'John Doe', 'Warehouse Manager', 50000.00, NULL),
(2, 'Jane Smith', 'Inventory Clerk', 40000.00, NULL),
(3, 'David Johnson', 'Warehouse Supervisor', 45000.00, NULL),
(4, 'Emily Brown', 'Shipping Coordinator', 38000.00, NULL),
(5, 'Michael Clark', 'Inventory Manager', 55000.00, NULL),
(6, 'Sarah Miller', 'Receiving Clerk', 37000.00, NULL),
(7, 'Kevin Davis', 'Warehouse Associate', 35000.00, NULL),
(8, 'Jessica Wilson', 'Order Picker', 32000.00, NULL),
(9, 'Robert Taylor', 'Fulfillment Specialist', 38000.00, NULL),
(10, 'Linda Martinez', 'Inventory Control Specialist', 42000.00, NULL),
(11, 'James Anderson', 'Logistics Coordinator', 46000.00, NULL),
(12, 'Susan Lee', 'Stock Clerk', 33000.00, NULL),
(13, 'Christopher Harris', 'Warehouse Lead', 42000.00, NULL),
(14, 'Mary Wilson', 'Shipping and Receiving Clerk', 36000.00, NULL),
(15, 'Matthew Taylor', 'Inventory Analyst', 48000.00, NULL),
(16, 'Jennifer Garcia', 'Order Fulfillment Associate', 34000.00, NULL),
(17, 'Daniel Martinez', 'Warehouse Operator', 33000.00, NULL),
(18, 'Karen Gonzalez', 'Shipping Supervisor', 42000.00, NULL),
(19, 'Brian Scott', 'Inventory Coordinator', 45000.00, NULL),
(20, 'Lisa Hernandez', 'Warehouse Assistant', 32000.00, NULL),
(21, 'Anthony Wright', 'Shipping Manager', 55000.00, NULL),
(22, 'Paula King', 'Inventory Clerk', 38000.00, NULL),
(23, 'Kenneth Young', 'Warehouse Technician', 36000.00, NULL),
(24, 'Angela Hall', 'Inventory Control Clerk', 35000.00, NULL),
(25, 'Steven Adams', 'Logistics Specialist', 47000.00, NULL),
(26, 'Michelle Evans', 'Warehouse Supervisor', 48000.00, NULL),
(27, 'Timothy Lewis', 'Receiving Manager', 52000.00, NULL),
(28, 'Patricia Harris', 'Order Processor', 34000.00, NULL),
(29, 'Ryan Allen', 'Warehouse Coordinator', 39000.00, NULL),
(30, 'Sharon Bailey', 'Inventory Specialist', 40000.00, NULL),
(31, 'Dennis Turner', 'Shipping and Receiving Supervisor', 47000.00, NULL),
(32, 'Rebecca Martinez', 'Warehouse Clerk', 33000.00, NULL),
(33, 'Gregory Nelson', 'Logistics Manager', 58000.00, NULL),
(34, 'Tiffany Walker', 'Inventory Auditor', 46000.00, NULL),
(35, 'Larry Coleman', 'Order Fulfillment Coordinator', 42000.00, NULL),
(36, 'Carolyn Rivera', 'Warehouse Lead', 41000.00, NULL),
(37, 'Albert Kelly', 'Shipping Assistant', 35000.00, NULL),
(38, 'Anna Mitchell', 'Inventory Controller', 49000.00, NULL),
(39, 'Jerry Brooks', 'Warehouse Administrator', 40000.00, NULL),
(40, 'Denise Roberts', 'Fulfillment Manager', 55000.00, NULL),
(41, 'Roy Murphy', 'Inventory Clerk', 38000.00, NULL),
(42, 'Teresa Bailey', 'Warehouse Specialist', 37000.00, NULL),
(43, 'Arthur Reed', 'Receiving Coordinator', 42000.00, NULL),
(44, 'Kathleen Price', 'Order Processor', 34000.00, NULL),
(45, 'Phillip Long', 'Warehouse Supervisor', 48000.00, NULL),
(46, 'Megan Carter', 'Inventory Control Manager', 51000.00, NULL),
(47, 'Brenda Foster', 'Logistics Coordinator', 47000.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity_in_stock` int(11) NOT NULL DEFAULT 0,
  `unit_price` decimal(10,2) NOT NULL,
  `reorder_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`item_id`, `item_name`, `category`, `quantity_in_stock`, `unit_price`, `reorder_level`) VALUES
(1, 'Laptop', 'Electronics', 100, 800.00, 10),
(2, 'Desktop', 'Electronics', 80, 600.00, 15),
(3, 'Printer', 'Electronics', 50, 200.00, 20),
(4, 'Chair', 'Furniture', 200, 50.00, 30),
(5, 'Table', 'Furniture', 150, 100.00, 25),
(6, 'Sofa', 'Furniture', 100, 300.00, 20),
(7, 'Hammer', 'Tools', 50, 10.00, 15),
(8, 'Drill', 'Tools', 30, 50.00, 10),
(9, 'Screwdriver', 'Tools', 100, 5.00, 20),
(10, 'Wrench', 'Tools', 80, 15.00, 25),
(11, 'TV', 'Electronics', 120, 600.00, 10),
(12, 'Bed', 'Furniture', 80, 400.00, 15),
(13, 'Refrigerator', 'Appliances', 70, 800.00, 20),
(14, 'Microwave', 'Appliances', 60, 150.00, 25),
(15, 'Toaster', 'Appliances', 90, 30.00, 15),
(16, 'Dining Table', 'Furniture', 110, 200.00, 20),
(17, 'Couch', 'Furniture', 70, 500.00, 10),
(18, 'Rug', 'Home Decor', 200, 50.00, 30),
(19, 'Curtains', 'Home Decor', 150, 20.00, 25),
(20, 'Painting', 'Home Decor', 80, 100.00, 15),
(21, 'Sofa Bed', 'Furniture', 50, 600.00, 20),
(22, 'Cabinet', 'Furniture', 100, 150.00, 25),
(23, 'Desk Lamp', 'Home Decor', 120, 15.00, 30),
(24, 'Bookshelf', 'Furniture', 90, 80.00, 15),
(25, 'Knife Set', 'Kitchenware', 100, 50.00, 20),
(26, 'Coffee Maker', 'Appliances', 70, 100.00, 15),
(27, 'Blender', 'Appliances', 50, 40.00, 25),
(28, 'Juicer', 'Appliances', 60, 30.00, 20),
(29, 'Television Stand', 'Furniture', 80, 70.00, 25),
(30, 'Bedside Table', 'Furniture', 100, 40.00, 20),
(31, 'Dishwasher', 'Appliances', 40, 400.00, 30),
(32, 'Vacuum Cleaner', 'Appliances', 60, 150.00, 20),
(33, 'Iron', 'Appliances', 90, 20.00, 25),
(34, 'Fan', 'Appliances', 80, 30.00, 20),
(35, 'Air Conditioner', 'Appliances', 70, 500.00, 15),
(36, 'Washing Machine', 'Appliances', 50, 300.00, 20),
(37, 'Dryer', 'Appliances', 40, 250.00, 25),
(38, 'Water Heater', 'Appliances', 30, 200.00, 30),
(39, 'Oven', 'Appliances', 60, 400.00, 20),
(40, 'Mixing Bowl Set', 'Kitchenware', 100, 20.00, 25),
(41, 'Cutlery Set', 'Kitchenware', 80, 40.00, 20),
(42, 'Bakeware Set', 'Kitchenware', 90, 50.00, 15),
(43, 'Food Processor', 'Appliances', 70, 100.00, 20),
(44, 'Rice Cooker', 'Appliances', 50, 60.00, 25),
(45, 'Pressure Cooker', 'Appliances', 40, 80.00, 20),
(46, 'Slow Cooker', 'Appliances', 60, 70.00, 25),
(47, 'Toaster Oven', 'Appliances', 70, 50.00, 30),
(48, 'Mixer', 'Appliances', 60, 80.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movement`
--

CREATE TABLE `inventory_movement` (
  `movement_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `source_warehouse_id` int(11) DEFAULT NULL,
  `destination_warehouse_id` int(11) DEFAULT NULL,
  `reason` varchar(50) NOT NULL,
  `movement_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_movement`
--

INSERT INTO `inventory_movement` (`movement_id`, `item_id`, `quantity`, `source_warehouse_id`, `destination_warehouse_id`, `reason`, `movement_date`) VALUES
(1, 1, 50, 1, 2, 'Restock', '2024-05-01'),
(2, 2, 30, 3, 1, 'Transfer', '2024-05-02'),
(3, 3, 20, 2, 4, 'Sale', '2024-05-03'),
(4, 1, 40, 5, 3, 'Restock', '2024-05-04'),
(5, 4, 15, 1, 2, 'Transfer', '2024-05-05'),
(6, 2, 25, 4, 2, 'Sale', '2024-05-06'),
(7, 5, 35, 2, 3, 'Restock', '2024-05-07'),
(8, 3, 10, 1, 4, 'Transfer', '2024-05-08'),
(9, 4, 20, 3, 5, 'Sale', '2024-05-09'),
(10, 1, 45, 4, 2, 'Restock', '2024-05-10'),
(11, 2, 20, 1, 3, 'Sale', '2024-05-11'),
(12, 5, 30, 3, 4, 'Restock', '2024-05-12'),
(13, 3, 15, 2, 5, 'Transfer', '2024-05-13'),
(14, 4, 25, 5, 1, 'Sale', '2024-05-14'),
(15, 1, 60, 3, 4, 'Restock', '2024-05-15'),
(16, 2, 35, 4, 1, 'Sale', '2024-05-16'),
(17, 5, 40, 1, 3, 'Restock', '2024-05-17'),
(18, 3, 25, 5, 2, 'Transfer', '2024-05-18'),
(19, 4, 30, 2, 3, 'Sale', '2024-05-19'),
(20, 1, 55, 1, 4, 'Restock', '2024-05-20'),
(21, 2, 15, 3, 5, 'Sale', '2024-05-21'),
(22, 5, 45, 4, 2, 'Restock', '2024-05-22'),
(23, 3, 20, 1, 3, 'Transfer', '2024-05-23'),
(24, 4, 35, 3, 5, 'Sale', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `expected_delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `expected_delivery_date`) VALUES
(1, 1, '2024-05-01', '2024-05-05'),
(2, 2, '2024-05-02', '2024-05-06'),
(3, 3, '2024-05-03', '2024-05-07'),
(4, 4, '2024-05-04', '2024-05-08'),
(5, 5, '2024-05-05', '2024-05-09'),
(6, 1, '2024-05-06', '2024-05-10'),
(7, 2, '2024-05-07', '2024-05-11'),
(8, 3, '2024-05-08', '2024-05-12'),
(9, 4, '2024-05-09', '2024-05-13'),
(10, 5, '2024-05-10', '2024-05-14'),
(11, 1, '2024-05-11', '2024-05-15'),
(12, 2, '2024-05-12', '2024-05-16'),
(13, 3, '2024-05-13', '2024-05-17'),
(14, 4, '2024-05-14', '2024-05-18'),
(15, 5, '2024-05-15', '2024-05-19'),
(16, 1, '2024-05-16', '2024-05-20'),
(17, 2, '2024-05-17', '2024-05-21'),
(18, 3, '2024-05-18', '2024-05-22'),
(19, 4, '2024-05-19', '2024-05-23'),
(20, 5, '2024-05-20', '2024-05-24'),
(21, 1, '2024-05-21', '2024-05-25'),
(22, 2, '2024-05-22', '2024-05-26'),
(23, 3, '2024-05-23', '2024-05-27'),
(24, 4, '2024-05-24', '2024-05-28'),
(25, 5, '2024-05-25', '2024-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `item_id`, `quantity`) VALUES
(1, 1, 5),
(1, 2, 3),
(2, 3, 2),
(2, 4, 1),
(3, 1, 4),
(3, 3, 5),
(4, 2, 2),
(4, 4, 3),
(5, 1, 6),
(5, 2, 4),
(6, 3, 3),
(6, 4, 2),
(7, 1, 3),
(7, 3, 4),
(8, 2, 5),
(8, 4, 1),
(9, 1, 2),
(9, 2, 6),
(10, 3, 4),
(10, 4, 3),
(11, 1, 7),
(11, 3, 2),
(12, 2, 3),
(12, 4, 4),
(13, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `shipment_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `date_received` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`shipment_id`, `supplier_id`, `date_received`) VALUES
(51, 1, '2024-05-01'),
(52, 2, '2024-05-02'),
(53, 3, '2024-05-03'),
(54, 4, '2024-05-04'),
(55, 5, '2024-05-05'),
(56, 6, '2024-05-06'),
(57, 7, '2024-05-07'),
(58, 8, '2024-05-08'),
(59, 9, '2024-05-09'),
(60, 10, '2024-05-10'),
(61, 1, '2024-05-11'),
(62, 2, '2024-05-12'),
(63, 3, '2024-05-13'),
(64, 4, '2024-05-14'),
(65, 5, '2024-05-15'),
(66, 6, '2024-05-16'),
(67, 7, '2024-05-17'),
(68, 8, '2024-05-18'),
(69, 9, '2024-05-19'),
(70, 10, '2024-05-20'),
(71, 1, '2024-05-21'),
(72, 2, '2024-05-22'),
(73, 3, '2024-05-23'),
(74, 4, '2024-05-24'),
(75, 5, '2024-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `shipment_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `contact_name`, `contact_email`, `contact_phone`) VALUES
(1, 'ABC Electronics', 'John Smith', 'john@abcelectronics.com', '123-456-7890'),
(2, 'XYZ Furniture', 'Jane Doe', 'jane@xyzfurniture.com', '234-567-8901'),
(3, '123 Appliances', 'Mike Johnson', 'mike@123appliances.com', '345-678-9012'),
(4, '456 Electronics', 'Emily Brown', 'emily@456electronics.com', '456-789-0123'),
(5, '789 Furniture', 'Michael Wilson', 'michael@789furniture.com', '567-890-1234'),
(6, 'ABC Appliances', 'Sarah Miller', 'sarah@abcappliances.com', '678-901-2345'),
(7, 'XYZ Electronics', 'Chris Taylor', 'chris@xyzelectronics.com', '789-012-3456'),
(8, '123 Furniture', 'Jessica Martinez', 'jessica@123furniture.com', '890-123-4567'),
(9, '456 Appliances', 'David Anderson', 'david@456appliances.com', '901-234-5678'),
(10, '789 Electronics', 'Jennifer Garcia', 'jennifer@789electronics.com', '012-345-6789'),
(11, 'ABC Furniture', 'William Hernandez', 'william@abcfurniture.com', '123-456-7890'),
(12, 'XYZ Appliances', 'Linda Young', 'linda@xyzappliances.com', '234-567-8901'),
(13, '123 Electronics', 'Kevin King', 'kevin@123electronics.com', '345-678-9012'),
(14, '456 Furniture', 'Amanda Wright', 'amanda@456furniture.com', '456-789-0123'),
(15, '789 Appliances', 'Brian Lee', 'brian@789appliances.com', '567-890-1234'),
(16, 'ABC Electronics', 'Nicole Scott', 'nicole@abcelectronics.com', '678-901-2345'),
(17, 'XYZ Furniture', 'James Lopez', 'james@xyzfurniture.com', '789-012-3456'),
(18, '123 Appliances', 'Kimberly Hill', 'kimberly@123appliances.com', '890-123-4567'),
(19, '456 Electronics', 'Mark Green', 'mark@456electronics.com', '901-234-5678'),
(20, '789 Furniture', 'Michelle Adams', 'michelle@789furniture.com', '012-345-6789'),
(21, 'ABC Appliances', 'Daniel Baker', 'daniel@abcappliances.com', '123-456-7890'),
(22, 'XYZ Electronics', 'Patricia Gonzalez', 'patricia@xyzelectronics.com', '234-567-8901'),
(23, '123 Furniture', 'Steven Nelson', 'steven@123furniture.com', '345-678-9012'),
(24, '456 Appliances', 'Mary Hall', 'mary@456appliances.com', '456-789-0123'),
(25, '789 Electronics', 'Christopher Allen', 'christopher@789electronics.com', '567-890-1234'),
(26, 'ABC Furniture', 'Laura Carter', 'laura@abcfurniture.com', '678-901-2345'),
(27, 'XYZ Appliances', 'William Evans', 'william@xyzappliances.com', '789-012-3456'),
(28, '123 Electronics', 'Amanda Scott', 'amanda@123electronics.com', '890-123-4567'),
(29, '456 Furniture', 'Michael Cooper', 'michael@456furniture.com', '901-234-5678'),
(30, '789 Appliances', 'Jennifer Murphy', 'jennifer@789appliances.com', '012-345-6789'),
(31, 'ABC Electronics', 'David Martinez', 'david@abcelectronics.com', '123-456-7890'),
(32, 'XYZ Furniture', 'Susan Hill', 'susan@xyzfurniture.com', '234-567-8901'),
(33, '123 Appliances', 'Matthew Diaz', 'matthew@123appliances.com', '345-678-9012'),
(34, '456 Electronics', 'Ashley Perez', 'ashley@456electronics.com', '456-789-0123'),
(35, '789 Furniture', 'Christopher Wood', 'christopher@789furniture.com', '567-890-1234'),
(36, 'ABC Appliances', 'Jessica Long', 'jessica@abcappliances.com', '678-901-2345'),
(37, 'XYZ Electronics', 'Jason Rivera', 'jason@xyzelectronics.com', '789-012-3456'),
(38, '123 Furniture', 'Amy Torres', 'amy@123furniture.com', '890-123-4567'),
(39, '456 Appliances', 'John Collins', 'john@456appliances.com', '901-234-5678'),
(40, '789 Electronics', 'Melissa Howard', 'melissa@789electronics.com', '012-345-6789'),
(41, 'ABC Furniture', 'Joshua Hughes', 'joshua@abcfurniture.com', '123-456-7890'),
(42, 'XYZ Appliances', 'Rebecca Sanchez', 'rebecca@xyzappliances.com', '234-567-8901'),
(43, '123 Electronics', 'Ryan Bailey', 'ryan@123electronics.com', '345-678-9012'),
(44, '456 Furniture', 'Julie Price', 'julie@456furniture.com', '456-789-0123'),
(45, '789 Appliances', 'Andrew Russell', 'andrew@789appliances.com', '567-890-1234');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `warehouse_id` int(11) NOT NULL,
  `address_street` varchar(255) NOT NULL,
  `address_city` varchar(100) NOT NULL,
  `address_state` varchar(50) NOT NULL,
  `address_zip` varchar(15) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`warehouse_id`, `address_street`, `address_city`, `address_state`, `address_zip`, `phone_number`) VALUES
(1, '123 Main St', 'Dhaka', 'Dhaka', '12345', '123-456-7890'),
(2, '456 Elm St', 'Chittagong', 'Chittagong', '67890', '234-567-8901'),
(3, '789 Oak St', 'Khulna', 'Khulna', '24680', '345-678-9012'),
(4, '321 Maple St', 'Rajshahi', 'Rajshahi', '13579', '456-789-0123'),
(5, '555 Pine St', 'Barisal', 'Barisal', '97531', '567-890-1234'),
(6, '777 Cedar St', 'Sylhet', 'Sylhet', '75319', '678-901-2345'),
(7, '999 Walnut St', 'Comilla', 'Comilla', '31957', '789-012-3456'),
(8, '222 Birch St', 'Rangpur', 'Rangpur', '97531', '890-123-4567'),
(9, '444 Cherry St', 'Mymensingh', 'Mymensingh', '75319', '901-234-5678'),
(10, '666 Elm St', 'Dinajpur', 'Dinajpur', '31957', '012-345-6789'),
(11, '888 Oak St', 'Narayanganj', 'Narayanganj', '97531', '123-456-7890'),
(12, '111 Maple St', 'Tangail', 'Tangail', '75319', '234-567-8901'),
(13, '333 Pine St', 'Gazipur', 'Gazipur', '31957', '345-678-9012'),
(14, '555 Cedar St', 'Jamalpur', 'Jamalpur', '97531', '456-789-0123'),
(15, '777 Walnut St', 'Jessore', 'Jessore', '75319', '567-890-1234'),
(16, '999 Birch St', 'Natore', 'Natore', '31957', '678-901-2345'),
(17, '222 Cherry St', 'Bogra', 'Bogra', '97531', '789-012-3456'),
(18, '444 Elm St', 'Cox\'s Bazar', 'Chittagong', '75319', '890-123-4567'),
(19, '666 Oak St', 'Feni', 'Chittagong', '31957', '901-234-5678'),
(20, '888 Maple St', 'Rangamati', 'Chittagong', '97531', '012-345-6789'),
(21, '111 Pine St', 'Pabna', 'Rajshahi', '75319', '123-456-7890'),
(22, '333 Cedar St', 'Thakurgaon', 'Rangpur', '31957', '234-567-8901'),
(23, '555 Walnut St', 'Patuakhali', 'Barisal', '97531', '345-678-9012'),
(24, '777 Birch St', 'Nawabganj', 'Dhaka', '75319', '456-789-0123'),
(25, '999 Cherry St', 'Bhola', 'Barisal', '31957', '567-890-1234'),
(26, '222 Elm St', 'Noakhali', 'Chittagong', '97531', '678-901-2345'),
(27, '444 Oak St', 'Jhenaidah', 'Khulna', '75319', '789-012-3456'),
(28, '666 Maple St', 'Sherpur', 'Mymensingh', '31957', '890-123-4567'),
(29, '888 Pine St', 'Satkhira', 'Khulna', '97531', '901-234-5678'),
(30, '111 Cedar St', 'Kushtia', 'Khulna', '75319', '012-345-6789'),
(31, '333 Walnut St', 'Manikganj', 'Dhaka', '31957', '123-456-7890'),
(32, '555 Birch St', 'Sirajganj', 'Rajshahi', '97531', '234-567-8901'),
(33, '777 Cherry St', 'Narsingdi', 'Dhaka', '75319', '345-678-9012'),
(34, '999 Elm St', 'Chapainawabganj', 'Rajshahi', '31957', '456-789-0123'),
(35, '222 Oak St', 'Magura', 'Khulna', '97531', '567-890-1234'),
(36, '444 Maple St', 'Chandpur', 'Chittagong', '75319', '678-901-2345'),
(37, '666 Pine St', 'Joypurhat', 'Rajshahi', '31957', '789-012-3456'),
(38, '888 Cedar St', 'Shariatpur', 'Dhaka', '97531', '890-123-4567'),
(39, '111 Walnut St', 'Netrokona', 'Mymensingh', '75319', '901-234-5678'),
(40, '333 Birch St', 'Nilphamari', 'Rangpur', '31957', '012-345-6789'),
(41, '555 Cherry St', 'Bagerhat', 'Khulna', '97531', '123-456-7890'),
(42, '777 Elm St', 'Brahmanbaria', 'Chittagong', '75319', '234-567-8901'),
(43, '999 Oak St', 'Lalmonirhat', 'Rangpur', '31957', '345-678-9012'),
(44, '222 Maple St', 'Madaripur', 'Dhaka', '97531', '456-789-0123'),
(45, '444 Pine St', 'Faridpur', 'Dhaka', '75319', '567-890-1234'),
(46, '666 Cedar St', 'Khagrachhari', 'Chittagong', '31957', '678-901-2345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `inventory_movement`
--
ALTER TABLE `inventory_movement`
  ADD PRIMARY KEY (`movement_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `source_warehouse_id` (`source_warehouse_id`),
  ADD KEY `destination_warehouse_id` (`destination_warehouse_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`shipment_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `inventory_movement`
--
ALTER TABLE `inventory_movement`
  MODIFY `movement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`warehouse_id`);

--
-- Constraints for table `inventory_movement`
--
ALTER TABLE `inventory_movement`
  ADD CONSTRAINT `inventory_movement_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`item_id`),
  ADD CONSTRAINT `inventory_movement_ibfk_2` FOREIGN KEY (`source_warehouse_id`) REFERENCES `warehouses` (`warehouse_id`),
  ADD CONSTRAINT `inventory_movement_ibfk_3` FOREIGN KEY (`destination_warehouse_id`) REFERENCES `warehouses` (`warehouse_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`item_id`);

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_ibfk_1` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`shipment_id`),
  ADD CONSTRAINT `shipment_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
