WITH hotels AS (
    SELECT * FROM dbo.[hotel2018]
    UNION 
    SELECT * FROM dbo.[hotel2019]
    UNION 
    SELECT * FROM dbo.[hotel2020])


select * from hotels
left join dbo.[market_segment]
on hotels.market_segment = dbo.[market_segment].market_segment   
left join dbo.[meal_cost]
on dbo.[meal_cost].meal = hotels.meal

