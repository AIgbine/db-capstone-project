CREATE DEFINER=`admin1`@`%` PROCEDURE `CancelOrder`(IN orderid INT)
BEGIN
DELETE FROM Orders WHERE OrderID = orderid;
END