-- Confirming All My Streamlined Data Is Imported From The Excel Worksheet --
Select * 
From PetrolPrices..Petrol

-- Ordering the data --
Select * 
From PetrolPrices..Petrol
Order By 3 Desc

-- Determining The Top 10 Highest Daily Consumers of Oil Worldwide --

Select TOP 10 Country, "Daily Oil Consumption(Litres)" 
From PetrolPrices..Petrol
Order By "Daily Oil Consumption(Litres)" Desc

-- 10 The Lowest Daily Oil Consumers of Oil Worldwide --

Select TOP 10 Country, "Daily Oil Consumption(Litres)" 
From PetrolPrices..Petrol
Order By "Daily Oil Consumption(Litres)" Asc

-- Top 10 Countries With Highest Oil Prices --
Select TOP 10 Country, "Price Per Litre (Ksh)" 
From PetrolPrices..Petrol
Order By "Price Per Litre (Ksh)" Desc

-- Top 10 Countries With Lowest Oil Prices --
Select TOP 10 Country, "Price Per Litre (Ksh)" 
From PetrolPrices..Petrol
Order By "Price Per Litre (Ksh)" Asc

-- Oil Prices for Eastern African Countries -- 

Select Country, "Price Per Litre (Ksh)"
From PetrolPrices..Petrol
Where Country In ('Kenya', 'Uganda', 'Tanzania', 'Burundi', 'Rwanda', 'Somalia', 'Sudan', 'South Sudan', 'Eritrea', 'Ethiopia')
Order By "Price Per Litre (Ksh)"

-- Global Highest Oil Usage Per Capita--
Select TOP 10 Country, "Yearly Litres Per Capita "
From PetrolPrices..Petrol
Order By "Yearly Litres Per Capita " Desc

-- East Africa Oil Usage Per Capita --
Select TOP 10 Country, "Yearly Litres Per Capita "
From PetrolPrices..Petrol
Where Country In ('Kenya', 'Uganda', 'Tanzania', 'Burundi', 'Rwanda', 'Somalia', 'Sudan', 'South Sudan', 'Eritrea', 'Ethiopia')
Order By "Yearly Litres Per Capita " Desc

-- Global Prices Vs Usage Per capita
Select Country, "Yearly Litres Per Capita ", "Price Per Litre (Ksh)"
From PetrolPrices..Petrol
Order By "Price Per Litre (Ksh)"


-- Creating Views For Visualization In Tableau --

--1. Global Prices Visualization --
Create View PricesGlobal as 
Select * 
From PetrolPrices..Petrol

--2 Highest Counsumers--
Create View HighestOilConsumers as
Select TOP 10 Country, "Daily Oil Consumption(Litres)" 
From PetrolPrices..Petrol
Order By "Daily Oil Consumption(Litres)" Desc

--3 Lowest Consumers--
Create View LowestOilConsumers as
Select TOP 10 Country, "Daily Oil Consumption(Litres)" 
From PetrolPrices..Petrol
Order By "Daily Oil Consumption(Litres)" Asc

--4 Highest Prices--
Create View HighestOilPrice as
Select TOP 10 Country, "Price Per Litre (Ksh)" 
From PetrolPrices..Petrol
Order By "Price Per Litre (Ksh)" Desc

--5 Lowest Prices--
Create View LowestOilPrice as
Select TOP 10 Country, "Price Per Litre (Ksh)" 
From PetrolPrices..Petrol
Order By "Price Per Litre (Ksh)" Asc

--6 Price Comparison In East Africa--
Create View EastAfricanOilPrice as
Select Country, "Price Per Litre (Ksh)"
From PetrolPrices..Petrol
Where Country In ('Kenya', 'Uganda', 'Tanzania', 'Burundi', 'Rwanda', 'Somalia', 'Sudan', 'South Sudan', 'Eritrea', 'Ethiopia')
Order By "Price Per Litre (Ksh)"

--7 Oil Usage Per Capita--
Create View OilUsagePerCapita as
Select TOP 10 Country, "Yearly Litres Per Capita "
From PetrolPrices..Petrol
Order By "Yearly Litres Per Capita " Desc

--8 East African Usage Per Capita--
Create View EAOilUsagePerCapita as
Select TOP 10 Country, "Yearly Litres Per Capita "
From PetrolPrices..Petrol
Where Country In ('Kenya', 'Uganda', 'Tanzania', 'Burundi', 'Rwanda', 'Somalia', 'Sudan', 'South Sudan', 'Eritrea', 'Ethiopia')