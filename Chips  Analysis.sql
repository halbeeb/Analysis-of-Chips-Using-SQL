/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM Transaction_data

  SELECT top 2 *
FROM purchase_behaviour 


USE portfolio
 
	-- PROCESS OF DATA CLEANING


-- CLEANING DATA USING STRING FUNCTIONS
update transaction_data
set product_name = 'Pringles Sour Cream Onion 134g' 
WHERE product_name ='Pringles SourCream Onion 134g'


update transaction_data
set product_name = 'Pringles Sweet & Spcy BBQ 134g'
WHERE product_name ='Pringles Sweet&Spcy BBQ 134g'

update transaction_data
set product_name = 'Wool Worths Medium Salsa 300g'
WHERE product_name ='Woolworths Medium Salsa 300g'

update transaction_data
set product_name = 'WW Sour Cream & Onion Stacked Chips 160g' 
WHERE product_name ='WW Sour Cream &OnionStacked Chips 160g'

update transaction_data
set product_name = 'Grain Waves Sour Cream & Chives 210G' 
WHERE product_name ='Grain Waves Sour Cream&Chives 210G'


update transaction_data
set product_name = 'Kettle Tortilla Chips Hny & Jlpno Chili 150g'
WHERE product_name ='Kettle Tortilla ChpsHny&Jlpno Chili 150g'

update transaction_data
set product_name = 'Kettle Sensations BBQ & Maple 150g' 
WHERE product_name ='Kettle Sensations BBQ&Maple 150g'

update transaction_data
set product_name = 'Cobs Pop Sour Cream & Chives Chips 110g' 
WHERE product_name ='Cobs Popd Sour Crm &Chives Chips 110g'

update transaction_data
set product_name = 'Pringles Sthrn Fried Chicken 134g'
WHERE product_name ='Pringles Sthrn FriedChicken 134g'

update transaction_data 
SET product_name = 'Infuzions Sour Cream & Herbs Veg Straws 110g'
WHERE product_name ='Infuzions SourCream&Herbs Veg Strws 110g'

update transaction_data 
SET product_name = 'Kettle Tortilla Chips Feta & Garlic 150g' 
WHERE product_name ='Kettle Tortilla ChpsFeta&Garlic 150g'

update transaction_data
set product_name = 'Kettle Sweet Pot Sea Salt 135g'
WHERE product_name ='Kettle 135g Swt Pot Sea Salt'


SELECT product_name, LEN( product_name)FROM Transaction_data


SELECT *
FROM Transaction_data



--CREATING A  TABLE 
CREATE TABLE TEMP_Transaction (Date date, Store_No float,LYLTY_CARD_NBR float,Tnx_ID float,
Product_No nvarchar(255),ProductName nvarchar(255),Pack_size nvarchar(255), Product_QTY nvarchar(255),
Product_price float,Total_sales float)

--INSERTING DATA INTO  TABLE
INSERT INTO Temp_Transaction
SELECT CAST(Date AS Date) AS Date, Store_No, LYLTY_CARD_NBR, Tnx_ID, Product_No, 
 SUBSTRING(Product_name,1,LEN( product_name) - 4) AS ProductName,Right(product_name,4) AS Pack_size,
 Product_QTY, Prduct_price AS Product_price, Total_sales
FROM Transaction_data


select * from Temp_Transaction

	-- REMOVING SPACES
	UPDATE Temp_transaction
SET productName = REPLACE(REPLACE(LTRIM(RTRIM(productName)), '  ', ' '), '   ',' ')



--ALTERING THE TABLE
UPDATE  Temp_transaction
SET Pack_size =  REPLACE(Pack_size, 'G', 'g') FROM Temp_transaction

update Temp_transaction
set productName = 'Smiths Crinkle Cut French Onion Dip'
WHERE productName ='Smiths Crinkle Cut French OnionDip'

update Temp_transaction
set productName = 'Natural Chip Company Sea Salt'
WHERE productName ='Natural Chip Compny SeaSalt'

update Temp_transaction
set productName = 'Smiths Chip Thiny S/Cream & Onion'
WHERE productName ='Smiths Chip Thinly S/Cream&Onion'

update Temp_transaction
set productName = 'Smiths Crankle Chip Original Big Bag'
WHERE productName ='Smiths Crnkle Chip Orgnl Big Bag'

update Temp_transaction
set productName = 'RRD Chilli & Coconut'
WHERE productName ='RRD Chilli& Coconut'

update Temp_transaction
set productName = 'Cobs Popd Sweet/Chilli & Sr/Cream Chips'
WHERE productName ='Cobs Popd Swt/Chlli &Sr/Cream Chips'

update Temp_transaction
set productName = 'Wool worths Cheese Rings'
WHERE productName ='Woolworths Cheese Rings'

update Temp_transaction
set productName = 'Smiths Thinly Sweet Chilli & S/Cream'
WHERE productName ='Smiths Thinly Swt Chli&S/Cream'

update Temp_transaction
set productName = 'Snbts Whlgrn Crisps Cheddr & Mstrd'
WHERE productName ='Snbts Whlgrn Crisps Cheddr&Mstrd'

update Temp_transaction
set productName = 'Smiths Chip Thiny Cut Salt/Vinegr'
WHERE productName ='Smiths Chip Thiny CutSalt/Vinegr'

update Temp_transaction
set productName = 'Kettle Tortilla Chips Btroot & Ricotta'
WHERE productName ='Kettle Tortilla ChpsBtroot&Ricotta'

update Temp_transaction
set productName = 'Natural Chip Co Honey Soy Chicken'
WHERE productName ='Natural ChipCo Hony Soy Chckn'
------
update Temp_transaction
set productName = 'Smiths Crinkle Cut Snag & Sauce'
WHERE productName ='Smiths Crinkle Cut Snag&Sauce'

update Temp_transaction
set productName = 'Thins Chips Seasoned chicken'
WHERE productName ='Thins Chips Seasonedchicken'

update Temp_transaction
set productName = 'Smiths Chip Thinly Cut Salt/Vineger'
WHERE productName ='Smiths Chip Thinly CutSalt/Vinegr'

update Temp_transaction
set productName = 'Thins Chips Light & Tangy'
WHERE productName ='Thins Chips Light& Tangy'

update Temp_transaction
set productName = 'Infuzions Thai Sweet Chilli Potato Mix'
WHERE productName ='Infuzions Thai SweetChili PotatoMix'

update Temp_transaction
set productName = 'Dorito Corn Chip Supreme'
WHERE productName ='Dorito Corn Chp Supreme'

update Temp_transaction
set productName = 'Natural Chip Co Tomato Herb & Spice'
WHERE productName ='Natural Chip Co Tmato Hrb&Spce' 

update Temp_transaction
set productName = 'Thins Chips Light & Tangy'
WHERE productName ='Thins Chips Light& Tangy' 


update Temp_transaction
set productName = 'Smiths Crinkle Cut Chips & Onion'
WHERE productName ='Smiths Crinkle Cut Chips Chs&Onion' 

update Temp_transaction
set productName = 'Dorito Corn Chip Supreme'
WHERE productName ='Dorito Corn Chp Supreme' 

--CLEANED DATA

SELECT TOP 2* 
FROM Temp_transaction

SELECT * 
FROM purchase_behaviour

--ANALYSIS

--TOTAL LIFESTAGE

SELECT COUNT( DISTINCT Lifestage) AS Total_lifestage
FROM purchase_behaviour




-- TOTAL CUSTOMER TYPE

SELECT COUNT( DISTINCT Premium_ccustomer) AS Total_customer_type
FROM purchase_behaviour



--TOTAL CUSTOMERS
SELECT COUNT(DISTINCT LYLTY_CARD_NBR) Total_customers
FROM TEMP_Transaction




--TOTAL CUSTOMERS BY CUSTOMER TYPE
SELECT  (SELECT DISTINCT Pur.premium_ccustomer FROM purchase_behaviour) AS Customer_type,
		COUNT(DISTINCT Trans.LYLTY_CARD_NBR) Total_customers			
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS pur 
						on trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
GROUP BY Pur.premium_ccustomer
ORDER BY Total_customers DESC



--TOTAL ORDER
SELECT  COUNT( Tnx_ID) Total_order
FROM TEMP_Transaction


--TOTAL STORES

SELECT  COUNT(DISTINCT  Store_No) Total_stores
FROM TEMP_Transaction



-- TOTAL PRODUCTS
SELECT  COUNT(DISTINCT ProductName) Total_products
FROM TEMP_Transaction


--TOTAL PACK SIZE
SELECT  COUNT(DISTINCT  pack_size) Total_pack_size
FROM TEMP_Transaction



--TOTAL SALES
SELECT  ROUND(SUM(Total_sales), 0) Total_sales
FROM TEMP_Transaction

ALTER TABLE Temp_transaction
ALTER COLUMN Product_QTY FLOAT

-- MAINSTREAM CUSTOMERS BY PRODUCT, PACK SIZE AND TOTAL QTY SOLD
SELECT DISTINCT CONCAT(Trans.ProductName, ' ', '-',' ', Trans.Pack_size) AS Product_name_and_PackSize,
				SUM(Trans.Product_QTY) AS Quantity_sold 
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'mainstream'
GROUP BY ProductName, Pack_size
ORDER BY  2 DESC



-- BUDGET CUSTOMER BY PRODUCT,  PACK SIZE AND TOTAL QTY SOLD
SELECT DISTINCT CONCAT(Trans.ProductName, ' ', '-',' ', Trans.Pack_size) AS Product_name_and_PackSize,
				SUM(Trans.Product_QTY) AS Quantity_sold 
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Budget'
GROUP BY ProductName, Pack_size
ORDER BY  2 DESC


-- PREMIUM CUSTOMER BY PRODUCT,  PACK SIZE AND TOTAL QTY SOLD
SELECT DISTINCT CONCAT(Trans.ProductName, ' ', '-',' ', Trans.Pack_size) AS Product_name_and_PackSize,
				SUM(Trans.Product_QTY) AS Quantity_sold 
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Premium'
GROUP BY ProductName, Pack_size
ORDER BY  2 DESC


--PRODUCT AND PACK SIZE BY TOTAL SALES

SELECT DISTINCT CONCAT(ProductName, ' ', '-',' ', Pack_size) AS Product_name_and_PackSize,
				ROUND(SUM(Total_sales), 0) AS Total_Sales
FROM TEMP_Transaction
GROUP BY ProductName,  Pack_size, product_price
ORDER BY  Total_Sales DESC



-- year
SELECT DISTINCT  DATENAME(YEAR, Date) AS Year
FROM TEMP_Transaction


-- MAINSTREAM BY YEAR AND TOTAL SALES
SELECT DISTINCT  DATENAME(YEAR, Trans.Date) AS Year, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction  AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'mainstream'
GROUP BY DATENAME(YEAR, Date)
ORDER BY 2 DESC

-- BUDGET BY YEAR AND TOTAL SALES
SELECT DISTINCT  DATENAME(YEAR, Trans.Date) AS Year, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction  AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Budget'
GROUP BY DATENAME(YEAR, Date)
ORDER BY 2 DESC


-- PREMIUM BY YEAR AND TOTAL SALES
SELECT DISTINCT  DATENAME(YEAR, Trans.Date) AS Year, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction  AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'premium'
GROUP BY DATENAME(YEAR, Date)
ORDER BY 2 DESC


-- MAINSTREAM BY WEEKDAY AND TOTAL CHIPS SALES
SELECT DISTINCT  DATENAME(WEEKDAY, Trans.Date) AS Day_of_the_week, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Mainstream'
GROUP BY DATENAME(WEEKDAY, Date)
ORDER BY 2 DESC

-- BUDGET BY WEEKDAY AND TOTAL CHIPS SALES
SELECT DISTINCT  DATENAME(WEEKDAY, Trans.Date) AS Day_of_the_week, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Budget'
GROUP BY DATENAME(WEEKDAY, Date)
ORDER BY 2 DESC

-- PREMIUM BY WEEKDAY AND TOTAL CHIPS SALES
SELECT DISTINCT  DATENAME(WEEKDAY, Trans.Date) AS Day_of_the_week, 
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Premium'
GROUP BY DATENAME(WEEKDAY, Date)
ORDER BY 2 DESC


--MAIN STREAM CUSTOMERS BY MONTHLY PURCHASE AND TOTAL SALES
SELECT DISTINCT  DATENAME(MONTH, Trans.Date) AS Day_of_the_week,
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Mainstream'
GROUP BY DATENAME(MONTH, Date)
ORDER BY 2 DESC


--BUDGET CUSTOMERS BY MONTHLY PURCHASE AND TOTAL SALES
SELECT DISTINCT  DATENAME(MONTH, Trans.Date) AS Day_of_the_week,
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'Budget'
GROUP BY DATENAME(MONTH, Date)
ORDER BY 2 DESC


--PREMIUM CUSTOMERS BY MONTHLY PURCHASE AND TOTAL SALES
SELECT DISTINCT  DATENAME(MONTH, Trans.Date) AS Day_of_the_week,
		ROUND(SUM(Trans.Total_sales),0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
						ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
WHERE PUR.Premium_Ccustomer = 'premium'
GROUP BY DATENAME(MONTH, Date)
ORDER BY 2 DESC



-- MAINSTREAM CUSTOMER TYPE LIFESTAGE BY TOTAL SALES
SELECT DISTINCT pur.lifestage,
		ROUND(SUM(Trans.Total_sales), 0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
		ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
		WHERE PUR.Premium_Ccustomer = 'mainstream'
GROUP BY Lifestage
ORDER BY 2 DESC


-- BUDGET CUSTOMER TYPE LIFESTAGE BY TOTAL SALES
SELECT DISTINCT pur.lifestage,
		ROUND(SUM(Trans.Total_sales), 0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
		ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
		WHERE PUR.Premium_Ccustomer = 'Budget'
GROUP BY Lifestage
ORDER BY 2 DESC



-- premium CUSTOMER TYPE LIFESTAGE BY TOTAL SALES
SELECT DISTINCT pur.lifestage,
		ROUND(SUM(Trans.Total_sales), 0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
		ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
		WHERE PUR.Premium_Ccustomer = 'premium'
GROUP BY Lifestage
ORDER BY 2 DESC



--  LIFESTAGE BY TOTAL SALES
SELECT DISTINCT pur.lifestage,
		ROUND(SUM(Trans.Total_sales), 0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
		ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR		
GROUP BY Lifestage
ORDER BY 2 DESC



--CUSTOMER TYPE BY TOTAL SALES
SELECT DISTINCT pur.Premium_Ccustomer AS Customer_type, 
				ROUND(SUM(Trans.Total_sales), 0) AS Total_sales
FROM TEMP_Transaction AS Trans JOIN purchase_behaviour AS Pur 
				ON Trans.LYLTY_CARD_NBR = pur.LYLTY_CARD_NBR
GROUP BY Premium_Ccustomer
ORDER BY 2 DESC


	--- TOP 10 STORE BY TOTAL SALES
SELECT  DISTINCT  Store_No,  ROUND(SUM(Total_sales), 0) AS Total_sales
FROM TEMP_Transaction
GROUP BY Store_No
ORDER BY 2 DESC



/***						TASK 2: Experimentation and uplift testing		******/

-- STORE BY REVENUE
SELECT DISTINCT Store_No,ROUND(SUM(Total_sales), 0) AS Revenue 
FROM TEMP_Transaction
WHERE DATE BETWEEN '2018-07-01' AND'2019-06-30'
GROUP BY  store_no
ORDER BY 2 DESC


--stores by no of customers
SELECT DISTINCT Store_No, COUNT(DISTINCT LYLTY_CARD_NBR) AS NO_of_customer 
FROM TEMP_Transaction
WHERE DATE BETWEEN '2018-07-01' AND'2019-06-30'
GROUP BY  store_no
ORDER BY 2 DESC

--no of transactions
SELECT DISTINCT Store_No, COUNT( Tnx_ID) AS NO_of_Transactions 
FROM TEMP_Transaction
WHERE DATE BETWEEN '2018-07-01' AND'2019-06-30'
GROUP BY  store_no
ORDER BY 2 DESC

-- STORE 88 BY MONTHLY REVENUE
SELECT  DATENAME(MONTH, Date), SUM(Total_sales) FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 88
GROUP BY  Total_sales






---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR  TRIAL STORE 77

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 77
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 


---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR CONTROL STORE 141

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 141
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 



---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR TRIAL STORE 86

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 86
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 


---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR CONTROL  STORE 155

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 155
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 




---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR TRIAL STORE 88

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 88
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 

---- MONTHLY  REVENUE, TOTAL CUSTOMERS, AND TOTAL TRANSACTIONS FOR CONTROL STORE 165

SELECT  DATENAME(MONTH, Date) AS Month
			,ROUND(SUM(Total_sales),0) AS Revenue 
			,COUNT(DISTINCT LYLTY_CARD_NBR) AS Total_customer 
			,COUNT( Tnx_ID)  AS Total_Transactions
FROM TEMP_Transaction
WHERE  DATE BETWEEN '2019-02-01' AND'2019-04-30' AND Store_No = 165
GROUP BY  DATENAME(MONTH, Date)
ORDER BY 1 
