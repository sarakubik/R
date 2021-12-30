-- select data

select *
from Customer2


-- select by column names
select FirstName, LastName
from Customer2

-- select things by filtering them
select *
from Customer2
where FirstName='Joey'
and Age=40;



-- update
update Customer2
Set Age=20
where FirstName='Joey'

-- Delete Customers
-- only deletes all the data in the table. Customers is still there

-- Delete only some of the data
-- all rows where the first name is Joey
Delete Customer2
where FirstName='Joey'
