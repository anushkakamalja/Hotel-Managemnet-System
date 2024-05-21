-- Stored Procedure 1: Inserting data into Payment table
CREATE PROCEDURE InsertPayment
    @BillID INT,
    @CustomerID INT,
    @PaymentDate DATETIME,
    @PaymentAmount DECIMAL(10, 2),
    @PaymentMethod NVARCHAR(50),
    @CardNumber NVARCHAR(20),
    @PaymentStatus NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Start explicit transaction
        BEGIN TRANSACTION;

        -- Insert data into Payment table
        INSERT INTO Payment (BillID, CustomerID, PaymentDate, PaymentAmount, PaymentMethod, CardNumber, PaymentStatus)
        VALUES (@BillID, @CustomerID, @PaymentDate, @PaymentAmount, @PaymentMethod, @CardNumber, @PaymentStatus);

        -- Commit transaction
        COMMIT TRANSACTION;

        -- Return success message
        SELECT 'Payment inserted successfully.' AS Message;
    END TRY
    BEGIN CATCH
        -- Rollback transaction if error occurs
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Return error message
        SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH;
END;

-- Stored Procedure 2: Inserting data into Reservation table
CREATE PROCEDURE InsertReservation
    @CustomerID INT,
    @CheckInDate DATE,
    @CheckOutDate DATE,
    @RoomNo INT,
    @NumberOfGuests INT,
    @TotalPrice DECIMAL(10, 2)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Start explicit transaction
        BEGIN TRANSACTION;

        -- Insert data into Reservation table
        INSERT INTO Reservation (CustomerID, CheckInDate, CheckOutDate, RoomNo, NumberOfGuests, TotalPrice)
        VALUES (@CustomerID, @CheckInDate, @CheckOutDate, @RoomNo, @NumberOfGuests, @TotalPrice);

        -- Commit transaction
        COMMIT TRANSACTION;

        -- Return success message
        SELECT 'Reservation inserted successfully.' AS Message;
    END TRY
    BEGIN CATCH
        -- Rollback transaction if error occurs
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Return error message
        SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH;
END;


-- Trigger 1: Trigger to capitalize the First Letter of First and Last Name in Customer Table after insert or update.
CREATE TRIGGER CapitalizeCustomerName
ON Customer
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Update the FirstName and LastName columns to capitalize the first letter
    UPDATE c
    SET c.FirstName = UPPER(LEFT(i.FirstName, 1)) + LOWER(SUBSTRING(i.FirstName, 2, LEN(i.FirstName))),
        c.LastName = UPPER(LEFT(i.LastName, 1)) + LOWER(SUBSTRING(i.LastName, 2, LEN(i.LastName)))
    FROM Customer c
    INNER JOIN inserted i ON c.CustomerID = i.CustomerID;
END;



-- Trigger 2: Delete trigger to log the deleted reservation details into a log table.
CREATE OR ALTER TRIGGER trgAfterDeleteReservation
ON Reservation
AFTER DELETE
AS
BEGIN
    DECLARE @ReservationID INT, @CustomerID INT, @CheckInDate DATE, @CheckOutDate DATE, @RoomNo INT, @NumberOfGuests INT, @TotalPrice DECIMAL(10, 2);

    -- Retrieve the deleted reservation details from the Deleted pseudo-table
    SELECT @ReservationID = d.ReservationID, @CustomerID = d.CustomerID, @CheckInDate = d.CheckInDate, @CheckOutDate = d.CheckOutDate, @RoomNo = d.RoomNo, @NumberOfGuests = d.NumberOfGuests, @TotalPrice = d.TotalPrice
    FROM deleted d;

    -- Insert the deleted reservation details into the Reservation_Log table
    INSERT INTO Reservation_Log (ReservationID, CustomerID, CheckInDate, CheckOutDate, RoomNo, NumberOfGuests, TotalPrice, LogTimestamp)
    VALUES (@ReservationID, @CustomerID, @CheckInDate, @CheckOutDate, @RoomNo, @NumberOfGuests, @TotalPrice, GETDATE());
END;



-- Computed Column 1: Calculating total amount for each reservation
CREATE FUNCTION dbo.CalculateTotalAmount (@CheckInDate DATE, @CheckOutDate DATE, @RoomNo INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalAmount DECIMAL(10, 2);
    DECLARE @Rate DECIMAL(10, 2);

    SELECT @Rate = Rate
    FROM RoomCategory rc
    WHERE rc.CategoryID = (
        SELECT CategoryID 
        FROM Room r
        WHERE r.RoomNo = @RoomNo
    );

    SET @TotalAmount = DATEDIFF(DAY, @CheckInDate, @CheckOutDate) * @Rate;

    RETURN @TotalAmount;
END;
GO

-- Alter the Reservation table to add the computed column
ALTER TABLE Reservation
ADD TotalAmount AS dbo.CalculateTotalAmount(CheckInDate, CheckOutDate, RoomNo);



-- Computed Column 2: Concatenating first name and last name
ALTER TABLE Customer
ADD FullName AS (FirstName + ' ' + LastName);


-- Complex Query 1: Retrieve customers with their total payments, total reservations, and the largest bill amount
SELECT 
    c.FirstName, 
    c.LastName, 
    SUM(p.PaymentAmount) AS TotalPayments,
    COUNT(r.ReservationID) AS TotalReservations,
    MAX(b.TotalAmount) AS LargestBillAmount
FROM 
    Customer c
LEFT JOIN 
    Payment p ON c.CustomerID = p.CustomerID
LEFT JOIN 
    Reservation r ON c.CustomerID = r.CustomerID
LEFT JOIN 
    Bill b ON r.ReservationID = b.ReservationID
GROUP BY 
    c.FirstName, c.LastName
HAVING 
    SUM(p.PaymentAmount) > 1000; -- Example threshold amount


-- Complex Query 2: Retrieve reservations with their associated room, customer and payment details
SELECT 
    r.ReservationID, 
    r.CheckInDate, 
    r.CheckOutDate, 
    r.TotalAmount,
    rm.RoomNo, 
    rm.RoomSize, 
    rm.BedType, 
    rm.IsAvailable,
    c.FirstName,
    c.LastName,
    p.PaymentAmount
FROM 
    Reservation r
INNER JOIN 
    Room rm ON r.RoomNo = rm.RoomNo
LEFT JOIN 
    Customer c ON r.CustomerID = c.CustomerID
LEFT JOIN 
    Payment p ON r.ReservationID = p.ReservationID
WHERE 
    r.CheckInDate >= '2023-01-01' AND r.CheckOutDate <= '2023-12-31'
    AND p.PaymentAmount > 1000;
	