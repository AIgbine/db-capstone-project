CREATE PROCEDURE `UpdateBooking`(bookingid INT, bookingdate DATE)
BEGIN
UPDATE Bookings
SET BookingDate = bookingdate
WHERE BookingID = bookingid;
SELECT CONCAT("Booking ", bookingid, " updated") AS "Confirmation";
END