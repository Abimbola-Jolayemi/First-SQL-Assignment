#Snack 1 
SELECT *
FROM order_item
WHERE ExtendedPrice >= 100 and ExtendedPrice <= 200
ORDER BY ExtendedPrice ASC;

#Snack 2
SELECT *
FROM SKU_DATA
WHERE Buyer LIKE '%PETE%';

#Snack 3
SELECT *
FROM SKU_DATA
WHERE SKU_Description LIKE '%Tent%';

#Snack 4
SELECT *
FROM SKU_DATA
WHERE SKU LIKE '%2%';

#Snack 5
SELECT *
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NULL;

#Snack 6
SELECT *
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NOT NULL;

#Snack 7
SELECT SUM(OrderTotal) AS OrderSum
FROM RETAIL_ORDER;

#Snack 8
SELECT
    SUM(ExtendedPrice) AS OrderItemSum,
    AVG(ExtendedPrice) AS OrderItemAvg,
    MIN(ExtendedPrice) AS OrderItemMin,
    MAX(ExtendedPrice) AS OrderItemMax
FROM
    ORDER_ITEM;
    
#Snack 9
SELECT COUNT(*) AS NumberOfRows
FROM ORDER_ITEM;

#Snack 10
SELECT COUNT(DISTINCT Department) AS DeptCount
FROM SKU_DATA;

#Snack 11
SELECT 
    OrderNumber,
    SKU,
    (Quantity * Price) AS EP
FROM ORDER_ITEM
ORDER BY OrderNumber, SKU;

#Snack 12
SELECT 
    OrderNumber,
    SKU
FROM ORDER_ITEM
WHERE Quantity * Price <> ExtendedPrice
ORDER BY OrderNumber, SKU;

#snack 13
SELECT 
    Department,
    COUNT(SKU) AS NumberOfCatalogItems
FROM CATALOG_SKU_2017
WHERE CatalogPage IS NOT NULL
GROUP BY Department;

#snack 14
SELECT 
    Department,
    Buyer,
    COUNT(SKU) AS Dept_Buyer_SKU_Count
FROM SKU_DATA
GROUP BY Department, Buyer;

#snack 15
SELECT 
    Department,
    Buyer,
    COUNT(SKU) AS Dept_Buyer_SKU_Count
FROM SKU_DATA
GROUP BY Department, Buyer;

#Snack 16
SELECT 
    Department,
    COUNT(SKU) AS Dept_SKU_Count
FROM SKU_DATA
WHERE SKU <> 302000
GROUP BY Department
HAVING COUNT(SKU) > 1
ORDER BY Dept_SKU_Count ASC;






