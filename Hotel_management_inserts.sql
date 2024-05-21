INSERT INTO Hotel (HotelName, Address, City, Country, PhoneNumber, EmailAddress, Website, NumberOfRooms, Rating, Amenities)
VALUES
('Grand Hotel', '123 Main Street', 'New York', 'USA', '+1 123-456-7890', 'info@grandhotel.com', 'www.grandhotel.com', 200, 4.5, 'Pool, Spa, Restaurant'),
('Luxury Resort', '456 Ocean Avenue', 'Los Angeles', 'USA', '+1 987-654-3210', 'info@luxuryresort.com', 'www.luxuryresort.com', 300, 4.8, 'Beach access, Tennis courts, Gym'),
('Mountain Lodge', '789 Mountain Road', 'Denver', 'USA', '+1 555-123-4567', 'info@mountainlodge.com', 'www.mountainlodge.com', 100, 4.2, 'Hiking trails, Skiing, Restaurant'),
('Seaside Inn', '101 Beach Boulevard', 'Miami', 'USA', '+1 123-456-7890', 'info@seasideinn.com', 'www.seasideinn.com', 150, 4.4, 'Ocean view, Poolside bar'),
('Urban Retreat', '222 Downtown Avenue', 'Chicago', 'USA', '+1 987-654-3210', 'info@urbanretreat.com', 'www.urbanretreat.com', 250, 4.6, 'Spa, Rooftop lounge, Fitness center'),
('Riverside Lodge', '333 Riverfront Drive', 'San Francisco', 'USA', '+1 555-123-4567', 'info@riversidelodge.com', 'www.riversidelodge.com', 120, 4.1, 'River view, Canoe rentals'),
('Highland Manor', '444 Hilltop Road', 'Seattle', 'USA', '+1 123-456-7890', 'info@highlandmanor.com', 'www.highlandmanor.com', 180, 4.3, 'Mountain views, Fine dining'),
('Desert Oasis', '555 Desert Boulevard', 'Phoenix', 'USA', '+1 987-654-3210', 'info@desertoasis.com', 'www.desertoasis.com', 180, 4.0, 'Pool, Golf course, Spa'),
('Harbor View Hotel', '666 Harbor Drive', 'Boston', 'USA', '+1 555-123-4567', 'info@harborviewhotel.com', 'www.harborviewhotel.com', 220, 4.7, 'Harbor view, Marina access'),
('Ski Chalet Resort', '777 Mountain Slope', 'Aspen', 'USA', '+1 123-456-7890', 'info@skichaletresort.com', 'www.skichaletresort.com', 80, 4.9, 'Ski-in/ski-out, Fireplace in rooms');

INSERT INTO RoomCategory (CategoryID, CategoryName, Rate, RoomSize, Capacity, BedType, Amenities)
VALUES
(1, 'Standard', 100.00, 'Medium', 2, 'Queen', 'TV, Wi-Fi, Bathroom'),
(2, 'Deluxe', 150.00, 'Large', 4, 'King', 'TV, Wi-Fi, Mini-bar, Jacuzzi'),
(3, 'Suite', 250.00, 'Extra Large', 6, 'King', 'TV, Wi-Fi, Mini-bar, Living Room, Jacuzzi'),
(4, 'Family Room', 200.00, 'Large', 5, 'Queen & Single', 'TV, Wi-Fi, Mini-bar, Sofa Bed'),
(5, 'Honeymoon Suite', 300.00, 'Extra Large', 2, 'King', 'TV, Wi-Fi, Mini-bar, Balcony, Jacuzzi');

INSERT INTO RoomLocation (LocationID, Floor, Room_View)
VALUES
(1, 1, 'City View'),
(2, 1, 'Ocean View'),
(3, 1, 'Mountain View'),
(4, 2, 'City View'),
(5, 2, 'Ocean View'),
(6, 2, 'Mountain View'),
(7, 3, 'City View'),
(8, 3, 'Ocean View'),
(9, 3, 'Mountain View'),
(10, 4, 'City View'),
(11, 4, 'Ocean View'),
(12, 4, 'Mountain View'),
(13, 5, 'City View'),
(14, 5, 'Ocean View'),
(15, 5, 'Mountain View');


INSERT INTO Room (RoomNo, CategoryID, LocationID, HotelID)
VALUES
(101, 1, 1, 1),
(102, 1, 2, 1),
(103, 2, 3, 1),
(104, 2, 4, 2),
(105, 3, 5, 2),
(201, 1, 6, 2),
(202, 1, 7, 3),
(203, 2, 8, 3),
(204, 2, 9, 3),
(205, 3, 10, 3);

INSERT INTO Customer (CustomerID, FirstName, LastName, EmailAddress, PhoneNumber, Address, DateOfBirth, BookingHistory)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '+1234567890', '123 Main St, Anytown, USA', '1990-01-01', 'Previous bookings: Hotel ABC, Resort XYZ'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '+1987654321', '456 Elm St, Otherville, USA', '1985-05-15', 'Previous bookings: Lodge 123, Inn LMN'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '+1122334455', '789 Maple St, Elsewhere, USA', '1982-11-30', 'Previous bookings: Chalet QRS, B&B DEF'),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '+1555666777', '321 Oak St, Somewhere, USA', '1978-09-20', 'Previous bookings: Motel GHI, Lodge NOP'),
(5, 'Emily', 'Taylor', 'emily.taylor@example.com', '+1444333222', '654 Pine St, Nowhere, USA', '1995-03-10', 'Previous bookings: Inn RST, Hotel UVW'),
(6, 'William', 'Anderson', 'william.anderson@example.com', '+1666777888', '987 Cedar St, Anyplace, USA', '1988-07-05', 'Previous bookings: Resort XYZ, Lodge 456'),
(7, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '+1777888999', '222 Walnut St, Everywhere, USA', '1992-12-25', 'Previous bookings: Chalet WXY, B&B ZZZ'),
(8, 'James', 'Garcia', 'james.garcia@example.com', '+1888999000', '555 Birch St, Noplace, USA', '1970-06-15', 'Previous bookings: Motel ABC, Inn XYZ'),
(9, 'Sophia', 'Hernandez', 'sophia.hernandez@example.com', '+1999000111', '888 Spruce St, Anyville, USA', '1980-04-28', 'Previous bookings: Lodge QWE, Hotel ASD'),
(10, 'Liam', 'Lopez', 'liam.lopez@example.com', '+1777666555', '777 Fir St, Someplace, USA', '1998-08-08', 'Previous bookings: Resort ZXC, Chalet VBN');

INSERT INTO Reservation (ReservationID, CustomerID, CheckInDate, CheckOutDate, RoomNo, NumberOfGuests, TotalPrice)
VALUES
-- Reservation for John Doe
(1, 1, '2024-02-15', '2024-02-17', 101, 2, 250.00),
(2, 1, '2024-02-20', '2024-02-23', 102, 1, 150.00),
(3, 1, '2024-02-25', '2024-02-27', 103, 2, 300.00),
-- Reservation for Jane Smith
(4, 2, '2024-02-16', '2024-02-18', 104, 2, 200.00),
(5, 2, '2024-02-21', '2024-02-24', 105, 1, 100.00),
(6, 2, '2024-02-28', '2024-03-02', 201, 3, 450.00),
-- Reservation for Alice Johnson
(7, 3, '2024-02-17', '2024-02-19', 202, 2, 300.00),
(8, 3, '2024-02-22', '2024-02-25', 203, 1, 150.00),
(9, 3, '2024-02-26', '2024-02-28', 204, 2, 250.00),
-- Reservation for Michael Brown
(10, 4, '2024-02-18', '2024-02-20', 205, 1, 100.00),
(11, 4, '2024-02-23', '2024-02-26', 101, 2, 250.00),
(12, 4, '2024-02-27', '2024-02-29', 102, 1, 150.00),
-- Reservation for Emily Taylor
(13, 5, '2024-02-19', '2024-02-21', 103, 2, 300.00),
(14, 5, '2024-02-24', '2024-02-27', 104, 1, 150.00),
(15, 5, '2024-02-29', '2024-03-02', 105, 3, 450.00),
-- Reservation for William Anderson
(16, 6, '2024-02-20', '2024-02-22', 201, 1, 100.00),
(17, 6, '2024-02-25', '2024-02-28', 202, 2, 250.00),
(18, 6, '2024-03-01', '2024-03-03', 203, 1, 150.00),
-- Reservation for Olivia Martinez
(19, 7, '2024-02-21', '2024-02-23', 204, 2, 300.00),
(20, 7, '2024-02-26', '2024-02-29', 205, 1, 150.00),
(21, 7, '2024-03-02', '2024-03-04', 101, 2, 250.00),
-- Reservation for James Garcia
(22, 8, '2024-02-22', '2024-02-24', 102, 1, 100.00),
(23, 8, '2024-02-27', '2024-03-01', 103, 2, 250.00),
(24, 8, '2024-03-02', '2024-03-05', 104, 1, 150.00),
-- Reservation for Sophia Hernandez
(25, 9, '2024-02-23', '2024-02-25', 105, 2, 300.00),
(26, 9, '2024-02-28', '2024-03-02', 201, 1, 150.00),
(27, 9, '2024-03-03', '2024-03-05', 202, 2, 250.00),
-- Reservation for Liam Lopez
(28, 10, '2024-02-24', '2024-02-26', 203, 1, 100.00),
(29, 10, '2024-02-29', '2024-03-02', 204, 2, 250.00),
(30, 10, '2024-03-03', '2024-03-06', 205, 1, 150.00);


-- Inserting 30 corresponding rows into the Payment table
INSERT INTO Payment (PaymentID, BillID, CustomerID, PaymentDate, PaymentAmount, PaymentMethod, TransactionID, CardNumber, PaymentStatus)
VALUES
-- Payments for reservations 1-10 (John Doe)
(1, 1, 1, '2024-02-15 10:30:00', 250.00, 'Credit Card', 'ABC123', '1234 5678 9012 3456', 'Paid'),
(2, 4, 2, '2024-02-16 11:45:00', 200.00, 'Credit Card', 'DEF456', '2345 6789 0123 4567', 'Paid'),
(3, 7, 3, '2024-02-17 09:15:00', 300.00, 'Credit Card', 'GHI789', '3456 7890 1234 5678', 'Paid'),
(4, 10, 4, '2024-02-18 14:20:00', 100.00, 'Credit Card', 'JKL012', '4567 8901 2345 6789', 'Paid'),
(5, 13, 5, '2024-02-19 13:10:00', 300.00, 'Credit Card', 'MNO345', '5678 9012 3456 7890', 'Paid'),
(6, 16, 6, '2024-02-20 12:00:00', 100.00, 'Credit Card', 'PQR678', '6789 0123 4567 8901', 'Paid'),
(7, 19, 7, '2024-02-21 09:30:00', 300.00, 'Credit Card', 'STU901', '7890 1234 5678 9012', 'Paid'),
(8, 22, 8, '2024-02-22 15:45:00', 100.00, 'Credit Card', 'VWX234', '8901 2345 6789 0123', 'Paid'),
(9, 25, 9, '2024-02-23 14:00:00', 300.00, 'Credit Card', 'YZA567', '9012 3456 7890 1234', 'Paid'),
(10, 28, 10, '2024-02-24 10:00:00', 100.00, 'Credit Card', 'BCD890', '0123 4567 8901 2345', 'Paid'),
-- Payments for reservations 11-20 (Jane Smith)
(11, 2, 1, '2024-02-20 08:00:00', 150.00, 'Credit Card', 'EFG123', '1234 5678 9012 3456', 'Paid'),
(12, 5, 2, '2024-02-21 10:30:00', 100.00, 'Credit Card', 'HIJ456', '2345 6789 0123 4567', 'Paid'),
(13, 8, 3, '2024-02-22 09:15:00', 150.00, 'Credit Card', 'KLM789', '3456 7890 1234 5678', 'Paid'),
(14, 11, 4, '2024-02-23 11:45:00', 250.00, 'Credit Card', 'NOP012', '4567 8901 2345 6789', 'Paid'),
(15, 14, 5, '2024-02-24 14:20:00', 150.00, 'Credit Card', 'QRS345', '5678 9012 3456 7890', 'Paid'),
(16, 17, 6, '2024-02-25 13:10:00', 250.00, 'Credit Card', 'TUV678', '6789 0123 4567 8901', 'Paid'),
(17, 20, 7, '2024-02-26 12:00:00', 150.00, 'Credit Card', 'VWX901', '7890 1234 5678 9012', 'Paid'),
(18, 23, 8, '2024-02-27 09:30:00', 250.00, 'Credit Card', 'YZA234', '8901 2345 6789 0123', 'Paid'),
(19, 26, 9, '2024-02-28 15:45:00', 150.00, 'Credit Card', 'BCD567', '9012 3456 7890 1234', 'Paid'),
(20, 29, 10, '2024-02-29 14:00:00', 250.00, 'Credit Card', 'EFG890', '0123 4567 8901 2345', 'Paid'),
-- Payments for reservations 21-30 (Alice Johnson)
(21, 3, 1, '2024-02-25 08:00:00', 300.00, 'Credit Card', 'HIJ123', '1234 5678 9012 3456', 'Paid'),
(22, 6, 2, '2024-02-28 10:30:00', 450.00, 'Credit Card', 'KLM456', '2345 6789 0123 4567', 'Paid'),
(23, 9, 3, '2024-02-26 09:15:00', 250.00, 'Credit Card', 'NOP789', '3456 7890 1234 5678', 'Paid'),
(24, 12, 4, '2024-02-27 11:45:00', 150.00, 'Credit Card', 'QRS012', '4567 8901 2345 6789', 'Paid'),
(25, 15, 5, '2024-02-29 14:20:00', 450.00, 'Credit Card', 'TUV345', '5678 9012 3456 7890', 'Paid'),
(26, 18, 6, '2024-03-01 13:10:00', 150.00, 'Credit Card', 'VWX678', '6789 0123 4567 8901', 'Paid'),
(27, 21, 7, '2024-03-02 12:00:00', 250.00, 'Credit Card', 'YZA901', '7890 1234 5678 9012', 'Paid'),
(28, 24, 8, '2024-03-03 09:30:00', 150.00, 'Credit Card', 'BCD234', '8901 2345 6789 0123', 'Paid'),
(29, 27, 9, '2024-03-05 15:45:00', 250.00, 'Credit Card', 'EFG567', '9012 3456 7890 1234', 'Paid'),
(30, 30, 10, '2024-03-06 14:00:00', 150.00, 'Credit Card', 'HIJ890', '0123 4567 8901 2345', 'Paid');

-- Inserting corresponding rows into the Bill table
INSERT INTO Bill (BillID, ReservationID, CustomerID, BillDate, TotalAmount, BillingAddress)
VALUES
-- Bills for reservations 1-10 (John Doe)
(1, 1, 1, '2024-02-15', 250.00, '123 Main St, Anytown, USA'),
(2, 4, 2, '2024-02-16', 200.00, '456 Elm St, Otherville, USA'),
(3, 7, 3, '2024-02-17', 300.00, '789 Maple St, Elsewhere, USA'),
(4, 10, 4, '2024-02-18', 100.00, '321 Oak St, Somewhere, USA'),
(5, 13, 5, '2024-02-19', 300.00, '654 Pine St, Nowhere, USA'),
(6, 16, 6, '2024-02-20', 100.00, '987 Cedar St, Anyplace, USA'),
(7, 19, 7, '2024-02-21', 300.00, '222 Walnut St, Everywhere, USA'),
(8, 22, 8, '2024-02-22', 100.00, '555 Birch St, Noplace, USA'),
(9, 25, 9, '2024-02-23', 300.00, '888 Spruce St, Anyville, USA'),
(10, 28, 10, '2024-02-24', 100.00, '777 Fir St, Someplace, USA'),
-- Bills for reservations 11-20 (Jane Smith)
(11, 2, 1, '2024-02-20', 150.00, '123 Main St, Anytown, USA'),
(12, 5, 2, '2024-02-21', 100.00, '456 Elm St, Otherville, USA'),
(13, 8, 3, '2024-02-22', 150.00, '789 Maple St, Elsewhere, USA'),
(14, 11, 4, '2024-02-23', 250.00, '321 Oak St, Somewhere, USA'),
(15, 14, 5, '2024-02-24', 150.00, '654 Pine St, Nowhere, USA'),
(16, 17, 6, '2024-02-25', 250.00, '987 Cedar St, Anyplace, USA'),
(17, 20, 7, '2024-02-26', 150.00, '222 Walnut St, Everywhere, USA'),
(18, 23, 8, '2024-02-27', 250.00, '555 Birch St, Noplace, USA'),
(19, 26, 9, '2024-02-28', 150.00, '888 Spruce St, Anyville, USA'),
(20, 29, 10, '2024-02-29', 250.00, '777 Fir St, Someplace, USA'),
-- Bills for reservations 21-30 (Alice Johnson)
(21, 3, 1, '2024-02-25', 300.00, '123 Main St, Anytown, USA'),
(22, 6, 2, '2024-02-28', 450.00, '456 Elm St, Otherville, USA'),
(23, 9, 3, '2024-02-26', 250.00, '789 Maple St, Elsewhere, USA'),
(24, 12, 4, '2024-02-27', 150.00, '321 Oak St, Somewhere, USA'),
(25, 15, 5, '2024-02-29', 450.00, '654 Pine St, Nowhere, USA'),
(26, 18, 6, '2024-03-01', 150.00, '987 Cedar St, Anyplace, USA'),
(27, 21, 7, '2024-03-02', 250.00, '222 Walnut St, Everywhere, USA'),
(28, 24, 8, '2024-03-03', 150.00, '555 Birch St, Noplace, USA'),
(29, 27, 9, '2024-03-05', 250.00, '888 Spruce St, Anyville, USA'),
(30, 30, 10, '2024-03-06', 150.00, '777 Fir St, Someplace, USA');


INSERT INTO Department (DepartmentID, DepartmentName, No_of_Employees)
VALUES
(1, 'Front Desk Services', 15),
(2, 'Housekeeping', 20),
(3, 'Restaurant/Culinary', 25),
(4, 'Maintenance', 12),
(5, 'Sales and Marketing', 18);

INSERT INTO Employee (EmployeeID, FirstName, LastName, DepartmentID, DateOfHire, ContactNumber, EmailAddress, Address, Salary, EmploymentStatus, HotelID)
VALUES
(1, 'David', 'Wilson', 1, '2023-01-15', '+1234567890', 'david.wilson@example.com', '123 Main St, Anytown, USA', 50000.00, 'Full-time', 1),
(2, 'Sarah', 'Jones', 2, '2023-02-20', '+1987654321', 'sarah.jones@example.com', '456 Elm St, Otherville, USA', 45000.00, 'Full-time', 1),
(3, 'Jessica', 'Brown', 3, '2023-03-10', '+1122334455', 'jessica.brown@example.com', '789 Maple St, Elsewhere, USA', 48000.00, 'Full-time', 1),
(4, 'Matthew', 'Garcia', 4, '2023-04-05', '+1555666777', 'matthew.garcia@example.com', '321 Oak St, Somewhere, USA', 52000.00, 'Full-time', 1),
(5, 'Lauren', 'Martinez', 5, '2023-05-15', '+1444333222', 'lauren.martinez@example.com', '654 Pine St, Nowhere, USA', 47000.00, 'Full-time', 1),
-- Additional employees can be inserted here
(6, 'Christopher', 'Taylor', 1, '2023-06-20', '+1666777888', 'christopher.taylor@example.com', '987 Cedar St, Anyplace, USA', 48000.00, 'Full-time', 1),
(7, 'Ashley', 'Hernandez', 2, '2023-07-10', '+1777888999', 'ashley.hernandez@example.com', '222 Walnut St, Everywhere, USA', 45000.00, 'Full-time', 1),
(8, 'Andrew', 'Lopez', 3, '2023-08-05', '+1888999000', 'andrew.lopez@example.com', '555 Birch St, Noplace, USA', 51000.00, 'Full-time', 1),
(9, 'Megan', 'Gonzalez', 4, '2023-09-15', '+1999000111', 'megan.gonzalez@example.com', '888 Spruce St, Anyville, USA', 49000.00, 'Full-time', 1),
(10, 'Kevin', 'Rodriguez', 5, '2023-10-20', '+1777666555', 'kevin.rodriguez@example.com', '777 Fir St, Someplace, USA', 46000.00, 'Full-time', 1);

INSERT INTO Restaurants (RestaurantID, RestaurantName, CuisineType, OpeningTime, ClosingTime, HotelID)
VALUES
(1, 'The Garden Terrace', 'American', '07:00:00', '22:00:00', 1),
(2, 'Bella Italia', 'Italian', '12:00:00', '22:30:00', 1),
(3, 'Sakura Sushi', 'Japanese', '11:30:00', '21:30:00', 1),
(4, 'Spice Route', 'Indian', '11:00:00', '23:00:00', 1),
(5, 'Mediterranean Delight', 'Mediterranean', '12:00:00', '22:00:00', 1);