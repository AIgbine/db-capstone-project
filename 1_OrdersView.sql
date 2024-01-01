CREATE VIEW `littlelemondb`.`ordersview` AS
    SELECT 
        `littlelemondb`.`orders`.`OrderID` AS `OrderID`,
        `littlelemondb`.`orders`.`Quantity` AS `Quantity`,
        `littlelemondb`.`orders`.`TotalCost` AS `Cost`
    FROM
        `littlelemondb`.`orders`
    WHERE
        (`littlelemondb`.`orders`.`Quantity` > 2)