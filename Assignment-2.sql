create database ExerciseDb
use ExerciseDb
 --Create the Publisher table
 create table Publisher
 (PId int primary key,
 PName nvarchar(50) unique not null)
 insert into Publisher values(1,'Ram')
 insert into Publisher values(2,'Sam')
 insert into Publisher values(3,'Ravi')

 --create the Category table
 create table Category
 (CId int primary key,
 CName nvarchar(50) unique not null)
  insert into Category values(100,'Science')
  insert into Category values(101,'Social')
  insert into Category values(102,'Physics')

  --create the Author table
  create table Author
  (AId int primary key,
  AName nvarchar(50) unique not null)
  insert into Author values(100,'John')
  insert into Author values(101,'Smith')
  insert into Author values(102,'Michael')

  --create the Book Table
  create table Book
  (BId int primary key,
  BName nvarchar(50) not null,
  BPrice float ,
  Author int,
  Publisher int,
  Category int,
  foreign key (Author) references Author (AId),
  foreign key (Publisher) references Publisher (PId),
  foreign key (Category) references Category (CId))

  insert into Book(BId,BName,BPrice,Author,Publisher,Category) values
  (1,'A',20.0,100,1,100),
  (2,'B',35.52,101,1,100),
  (3,'c',38.52,102,2,101),
  (4,'D',53.52,100,3,102),
  (5,'E',65.52,102,2,101),
  (6,'F',62.25,101,3,100)

  select BId,BName,BPrice,AName as Author,PName as Publisher,CName as Category
  from Book
  join  Author on Book.Author=Author.AId
  join Publisher on Book.Publisher=Publisher.PId
  join Category on Book.Category=Category.CId


