select *
from Customer2

-- to add a column
alter table Customer2
add City varchar(50);

-- adding one value into all rows of new column
update Customer2
Set City='New York';

-- changing one value in a specific row
update Customer2
Set City='Indianapolis'
where LastName='Jones';