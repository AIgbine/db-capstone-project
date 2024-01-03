CREATE PROCEDURE `CheckBooking`(IN booking_date DATE, IN table_no INT)
BEGIN
DECLARE bookedTable INT DEFAULT 0;
SELECT COUNT(bookedTable)
INTO bookedTable
FROM Bookings WHERE BookingDate = booking_date and TableNo = table_no;
CASE WHEN bookedTable > 0 THEN
SELECT CONCAT( "Table ", table_no, " is already booked") AS "Booking status";
ELSE SELECT CONCAT( "Table ", table_no, " is not booked") AS "Booking status";
END CASE;
END