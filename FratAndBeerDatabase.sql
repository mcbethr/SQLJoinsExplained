CREATE TABLE Fratboys (
    FratID int IDENTITY(1,1) PRIMARY KEY,
    Name varchar(255) NOT NULL,
);

CREATE TABLE Beers (
    BeerID int IDENTITY(1,1) PRIMARY KEY,
    FratID int,
    BeerName varchar(255) NOT NULL,
);

insert into FRATBOYS (NAME) Values ('Circleback Jack')
insert into FRATBOYS (NAME) Values ('Chad')
insert into FRATBOYS (NAME) Values ('Tad')
insert into FRATBOYS (NAME) Values ('Brad')
insert into FRATBOYS (NAME) Values ('Ra''ad')

insert into Beers (FratID,BeerName) Values (1,'Natty Lite 1')
insert into Beers (FratID,BeerName) Values (1,'Natty Lite 2')
insert into Beers (FratID,BeerName) Values (2,'Natty Lite 3')
insert into Beers (FratID,BeerName) Values (3,'Natty Lite 4')
insert into Beers (FratID,BeerName) Values (4,'Natty Lite 5')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 6')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 7')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 8')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 9')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 10')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 11')
insert into Beers (FratID,BeerName) Values (Null,'Natty Lite 12')

--Select * from Fratboys

--select * from Beers

---List everybody who has a beer.
---INNER JOIN
--Select * from Fratboys
--INNER JOIN BEERS
--ON Fratboys.FratID = Beers.FratID

---List everybody if they have a beer or not
---But if they have a beer, list their beer
---LEFT OUTER JOIN
--Select * from Fratboys
--LEFT OUTER JOIN Beers 
--ON beers.FratID = Fratboys.FratID

---List everybody who does not have a beer
---LEFT OUTER JOIN with where clause
--Select * from Fratboys
--LEFT OUTER JOIN Beers 
--ON beers.FratID = Fratboys.FratID
--WHERE BeerID IS Null

---List All beers not owned by anyone
--Select * from Fratboys
--RIGHT OUTER JOIN Beers 
--ON beers.FratID = Fratboys.FratID
--WHERE Beers.FratID IS Null

---List all Fratboys and all Beers listing 
---beer owners where appropriate
--Select * from Fratboys
--FULL JOIN Beers 
--ON beers.FratID = Fratboys.FratID