CREATE TABLE Hotel (
    HotelID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    HotelName NVARCHAR(100),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    Country NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    EmailAddress NVARCHAR(100),
    Website NVARCHAR(100),
    NumberOfRooms INT,
    Rating DECIMAL(3, 1),
    Amenities NVARCHAR(MAX)
);

CREATE TABLE RoomCategory (
    CategoryID INT PRIMARY KEY NOT NULL,
    CategoryName NVARCHAR(100),
    Rate DECIMAL(10, 2),
    RoomSize NVARCHAR(50),
    Capacity INT,
    BedType NVARCHAR(50),
    Amenities NVARCHAR(MAX)
);

CREATE TABLE RoomLocation (
    LocationID INT PRIMARY KEY NOT NULL,
    Floor INT,
    Room_View NVARCHAR(100)
);

CREATE TABLE Room (
    RoomNo INT PRIMARY KEY NOT NULL,
    CategoryID INT,
    LocationID INT,
    HotelID INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES RoomCategory(CategoryID),
    FOREIGN KEY (LocationID) REFERENCES RoomLocation(LocationID),
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);


CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY NOT NULL,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EmailAddress NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    Address NVARCHAR(255),
    DateOfBirth DATE,
    BookingHistory NVARCHAR(MAX)
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY NOT NULL,
    CustomerID INT NOT NULL,
    CheckInDate DATE,
    CheckOutDate DATE,
    RoomNo INT NOT NULL,
    NumberOfGuests INT,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RoomNo) REFERENCES Room(RoomNo)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY NOT NULL,
    BillID INT NOT NULL,
    CustomerID INT NOT NULL,
    PaymentDate DATETIME,
    PaymentAmount DECIMAL(10, 2),
    PaymentMethod NVARCHAR(50),
    TransactionID NVARCHAR(50) UNIQUE,
    CardNumber NVARCHAR(20),
    PaymentStatus NVARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Bill (
    BillID INT PRIMARY KEY NOT NULL,
    ReservationID INT NOT NULL,
    CustomerID INT NOT NULL,
    PaymentID INT NOT NULL,
    BillDate DATE,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    BillingAddress NVARCHAR(255),
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

ALTER TABLE Payment
ADD CONSTRAINT FK_BillID FOREIGN KEY (BillID) REFERENCES Bill(BillID);


CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY NOT NULL,
    DepartmentName NVARCHAR(100),
	No_of_Employees INT
);


CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY NOT NULL,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DepartmentID INT,
    DateOfHire DATE,
    ContactNumber NVARCHAR(20),
    EmailAddress NVARCHAR(100),
    Address NVARCHAR(255),
    Salary DECIMAL(10, 2),
    EmploymentStatus NVARCHAR(50),
    HotelID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY NOT NULL,
    RestaurantName NVARCHAR(100) NOT NULL,
    CuisineType NVARCHAR(100),
    OpeningTime TIME,
    ClosingTime TIME,
    HotelID INT,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);


