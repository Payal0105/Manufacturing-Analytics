

# Manufacture Qty
SELECT ROUND(SUM(manufactured_qty)) AS Manufactures_Qty FROM prod_data;

# Rejected Qty 
SELECT ROUND(SUM(Rejected_qty)) AS Rejected_Qty FROM prod_data;

# Processed Qty
SELECT currencyround(SUM(Processed_qty)) AS Processed_Qty FROM prod_data;

# Wastage Qty
SELECT CONCAT(ROUND(SUM(Rejected_Qty)/SUM(Processed_Qty)*100,2),"%") AS Total_Wastage FROM prod_data;

Select * from prod_data;

# Employee Wise Rejected Qty
SELECT Emp_Name,SUM(Rejected_Qty) As Total_Rejected FROM prod_data group by Emp_Name having Total_Rejected <> 0;

# Production Comparison trend 
select  Document_Date, sum(Produced_Qty) as Produced_Qty from prod_data group by Document_Date;

# Department Wise Manufacture Vs Rejected
SELECT Department_Name,SUM(manufactured_Qty) As Manufactured_Qty,SUM(Rejected_Qty) as Rejected_Qty FROM prod_data GROUP BY Department_Name;

# Delivery_Period
SELECT Delivery_Period,COUNT(Delivery_Period) as Total_Delivery FROM prod_data GROUP BY Delivery_Period;


# Total Quantity and Total Revanu
SELECT Department_Name,SUM(TotalQty) AS TotalQty,round(SUM(TotalValue),0) AS Total_Revanu FROm prod_data GROUP BY Department_Name;