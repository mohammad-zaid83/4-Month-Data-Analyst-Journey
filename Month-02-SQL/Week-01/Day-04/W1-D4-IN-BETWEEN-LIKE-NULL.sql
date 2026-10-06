-- --------------------------
-- SQL DAY-04
-- Business Question
-- --------------------------
-- Delhi, Mumbai aur Lucknow ke customers find karo.
select *
from customers
where city in ('delhi','lucknow','mumbai');

-- Sirf Male aur Female mein se Female customers find karo using IN.
select *
from customers
where gender in ('female');

-- Delhi aur Mumbai ko exclude karke customers find karo.
select *
from customers
where city not in ('delhi','mumbai');

-- Age 20 se 25 inclusive wale customers find karo.
select *
from customers
where age between 20 and 25;

-- total_spent ₹40,000 se ₹80,000 ke beech wale customers find karo.
select *
from customers
where total_spent between 40000 and 80000;

--  Age 20–25 range ke bahar wale customers find karo.
 select *
 from customers
 where age not between 20 and 25;
 
 -- Customer names jo A se start hote hain.
 select *
 from customers
 where customer_name like 'a%';
 
 -- Customer names jo a par end hote hain.
 select *
 from customers
 where customer_name like '%a';
 
 -- Customer names jinmein an kahin bhi present ho.
select *
from customers
where customer_name like '_an_';

-- Un customers ko find karo jinki city missing hai.
select *
from customers
where city is null;

-- Un customers ko find karo jinki city available hai..ALTER
select *
from customers
where city is not null;

-- Humein Delhi, Lucknow ya Mumbai ke customers chahiye jinhone ₹40,000 se ₹1,00,000 ke beech spend kiya hai.
select *
from customers
where city in ('delhi','lucknow') 
and total_spent between 40000 and 100000;

-- Humein un customers ki list chahiye jinka naam A se start hota hai aur city missing nahi hai.
select *
from customers
where customer_name like 'a%'
and city is null;

-- Aise customers jo Delhi ya Lucknow mein hain, age 20–30 ke beech hai, aur unka naam a contain karta hai.
select *
from customers
where city in ('delhi', 'mumbai')
and age between 20 and 25
and customer_name like 'a%';