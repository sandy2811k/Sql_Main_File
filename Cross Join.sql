------------cross join------------

create table color
(
id int,
name varchar(10)
)

create table size
(
id int,
name varchar(10)
)

insert into color values(1,'Red'),(2,'Black'),(3,'White'),(4,'Blue'),(5,'pink')
insert into size values(1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'XXL')

select * from color cross join size

