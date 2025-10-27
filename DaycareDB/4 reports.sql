--1) Can you please let me know which type of food id the most common? Formula or Pumped milk?
--AS I didn't separate the solids from the liquid so this query is working accordingly. Let me know if you want it to be 2 separate columns
select top 1 CountOfFood = count(*), c.FoodType
from ChildProfile c 
group by c.FoodType
order by CountOfFood desc
--2) List me this kids in the following format: LastName, Firstname: Age - WakeWindow; OzPerFeeding
select concat(c.LastName, ', ', c.FirstName, ': ', c.AgeInMonths, ' - ', c.WakeWindowMinutes, '; ', c.OzPerFeeding)
from childprofile c 
--3) List for me the total profit per baby based on their rate/day and assuming 20 days/month (if no end date, count 1 month)
select sum((c.RatePerDay * 20) * isnull(datediff(month, c.StartDate, c.EndDate),1)), c.FirstName, c.LastName
from childprofile c 
group by c.FirstName, c.LastName
--4) We need a list of how many of each age baby we have: under 3 months is one catagory = newborn, other that each month is a catagory
select count(*), AgeBracket = case 
                                when c.AgeInMonths between 0 and 2 then 'newborn'
                                else concat(c.AgeInMonths, ' Months')
                              end
from childprofile c
group by case 
            when c.AgeInMonths between 0 and 2 then 'newborn'
            else concat(c.AgeInMonths, ' Months')
         end