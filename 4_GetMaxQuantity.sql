CREATE DEFINER=`admin1`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
SELECT MAX(Quantity) AS "Max Quantity in Order"
FROM Orders;
END