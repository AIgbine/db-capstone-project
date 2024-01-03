CREATE PROCEDURE `AddValidBooking`(IN bookind_id INT, IN booking_date DATE, IN table_no INT, IN CustomerID INT, EmployeeID INT)
BEGIN

DECLARE BookingCount INT;

    -- Check if the table is already booked
    SELECT COUNT(*) INTO BookingCount
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNo = table_no;

      -- Start a transaction
    START TRANSACTION;

    IF BookingCount > 0 THEN
        -- The table is already booked, so rollback the transaction
        SELECT CONCAT( "Table ", table_no, " is already booked -booking cancelled") AS "Booking status";
        ROLLBACK;
        
    ELSE
        -- The table is available, so insert the new booking
        INSERT INTO Bookings (BookingID, BookingDate, TableNo, CustomerID, employeeID)
        VALUES (BookingID, booking_date, table_no, CustomerID, EmployeeID);
        SELECT CONCAT( "Table ", table_no, " is not booked -booking successful!!") AS "Booking status";

        -- Commit the transaction
        COMMIT;
    END IF;
END