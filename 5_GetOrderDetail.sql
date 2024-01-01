PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost AS Cost FROM Orders WHERE OrderID=?';
SET @ID = 1;
execute GetOrderDetail USING @id;