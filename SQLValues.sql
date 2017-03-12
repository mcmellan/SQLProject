CREATE DATABASE dbBookRecords;

CREATE TABLE tblBOOK
(BookId int NOT NULL,
Title nvarchar(50) NOT NULL,
PublisherName nvarchar(50) NOT NULL
)

INSERT INTO tblBOOK
(BookId,Title,PublisherName)
VALUES(1, ' The Lost Tribe', 'Mc Millan'),
(2, ' The Peaceful Warrior', 'Ordeniza Associates'),
(3, ' My Life', 'Joys PUbli'),
(4, ' We Are The World', 'Pruis Publisher'),
(5, ' The Way Station', 'KingsMen'),
(6, ' Perla Labandera', 'Blackintach Company'),
(7, ' The Echosera', 'Britanica Publisher'),
(8, ' The Froglet', 'National Geographic Publisher'),
(9, ' AKA SIA', 'Vogue Magazine'),
(10, ' Im Kimmy Dora', 'GQ Publisher'),
(11, ' I Love Black', 'Versae Publisher'),
(12, ' Life of a chef', 'Kilay Publisher'),
(13, ' I have Bangs', 'Dairy Publisher '),
(14, ' I have thick hair', 'ENya Publisher'),
(15, ' I love my jawline', 'Blackintach Company'),
(16, ' I am an Entreprenuer', 'Ordeniza Associates'),
(17, ' Modern Day Businesswoman', 'Joys PUbli'),
(18, ' My Juga and I', 'Joys PUbli'),
(19, ' My name is booba', 'Blackintach Company'),
(20, ' Perla: The Memoir', 'Versae Publisher')

CREATE TABLE tblBooks_AUTHOR
(BookId int NOT NULL,
AuthorName nvarchar(50) NOT NULL
)
INSERT INTO tblBooks_AUTHOR
(BookId, AuthorName)
VALUES(1,  'Pearl'),
(2,  'Ordeniza'),
(3,  'Joyce'),
(4,  'Mac'),
(5,  'Stephen King'),
(6,  'J.K Rowling'),
(7,  'Danielle Steel'),
(8,  'Oprah Winfrey'),
(9,  'Jessica Hagedorn'),
(10,'David Henry Hwang'),
(11, 'George Lucas '),
(12,'Nicholas Sparks'),
(13, 'Emily Dickenson'),
(14,  'Edgar Alan '),
(15,  'Shakespeare'),
(16,  'Spears'),
(17,  'Apollo'),
(18, 'October'),
(19,'Deepah'),
(20, 'Metra')

CREATE TABLE tblPublisher 
(Name nvarchar(50) NOT NULL,
[Address] nvarchar(50) NOT NULL,
Phone varchar(50) NOT NULL
)
INSERT INTO tblPublisher 
(Name, [Address], Phone)
VALUES( 'Mc Millan','Covina CA',23456546579),
( 'Ordeniza Associates', 'Duarte CA', 3245434789),
( 'Joys PUbli','North Hollywood CA ', 47634678768),
( 'Pruis Publisher','West Hollywood CA', 12576880987),
( 'KingsMen','Long Beach CA', 27367809979),
( 'Blackintach Company', 'West Covina CA', 62676789800),
( 'Britanica Publisher','Corona CA', 71456787655),
( 'National Geographic Publisher', 'New York NY', 762567876567),
('Vogue Magazine', 'New York NY', 21346786787),
( 'GQ Publisher', 'New York NY', 21378769878),
( 'Versae Publisher', 'Rome Italy', 021897789),
('Kilay Publisher','Walnut CA', 62635677688),
('Dairy Publisher ','Diamond Bar CA', 6165249899),
('ENya Publisher', 'Loch Lomond Scotland', 987767672)

CREATE TABLE tbkBook_Copies
(BookId int NOT NULL,
BranchId int NOT NULL,
No_Of_Copies int NOT NULL
)
INSERT INTO tblBooK_Copies
(BookId, BranchId, No_Of_Copies)
VALUES(1,1,2 ),
(2,1,2 ),
(3,1,3 ),
(4,1,4 ),
(5,1,5 ),
(6,1,6 ),
(7,1,7 ),
(8,1,8 ),
(9,1,9 ),
(10,1,10 ),
(11,1,11 ),
(12,2,12 ),
(13,2,13 ),
(14,2,14 ),
(15,2,15 ),
(16,2,16 ),
(17,2,17),
(18,2,18 ),
(19,2,19 ),
(20,2,20),
(8,2,8 ),
(9,2,9 ),
(10,3,10 ),
(11,3,11 ),
(12,3,12 ),
(13,3,13 ),
(14,3,14 ),
(15,3,15 ),
(16,3,16 ),
(17,3,17),
(18,3,18 ),
(19,3,19 ),
(20,3,20),
(1,4,2),
(2,4,2 ),
(3,4,3 ),
(4,4,4 ),
(5,4,5 ),
(6,4,6 ),
(7,4,7 ),
(8,4,8 ),
(9,4,9 ),
(10,4,10 ),
(11,4,11 )

CREATE TABLE tblLibrary_Branch
(BranchId int NOT NULL,
BranchName nvarchar(50) NOT NULL,
[Address] nvarchar(50) NOT NULL
)
INSERT INTO tblLibrary_Branch
(BranchId,BranchName, [Address])
VALUES(1,'Sharpstown','Los Angeles, CA'),
(2,'Central','New York, NY' ),
(3,'London','London, UK'),
(4 ,'Orange','Orange County, CA')



CREATE TABLE tblBorrower
(CardNo int NOT NULL,
Name nvarchar(50) NOT NULL,
[Address] nvarchar(50) NOT NULL,
Phone varchar(25) NOT NULL
)
INSERT INTO tblBorrower
(CardNo, Name, [Address], Phone )
VALUES(1,'Mac','Rowland Heights CA', 6263763766),
(2,'Des','Rowland Heights CA', 6263763166),
(3,'Justine','West Covina CA', 6263763736),
(4,'Camille','Rowland Heights CA', 6263743766),
(5,'JV','Rowland Heights CA', 6263763226),
(6,'Pearl','Duarte CA', 6263763732),
(6,'Albert','Alhambra CA', 6263233766),
(7,'Dave','Los Angeles CA', 6262365766)

CREATE TABLE Book_Loans
(BookId int NOT NULL,
BranchId int NOT NULL,
CardNo int NOT NULL,
DateOut int NOT NULL,
DueDate int NOT NULL
)
INSERT INTO Book_Loands
(BookId, BranchId, CardNo, DateOut, DueDate)
VALUES(1, 1, 1, 3012017, 4012017),
(2,	1,	2,	3012017, 4012017),
(3,	1,	3,	3012017, 4012017),
(4,	1,	4,	3012017, 4012017),
(5,	3,	5,	3012017, 4012017),
(6,	1,	6,	3012017, 4012017),
(7,	4,	7,	3012017, 4012017),
(8,	1,	8,	3012017, 4012017),
(9,	4,	9,	3012017, 4012017),
(1,	1,	1,	3012017, 4012017),
(2,	2,	2,	3012017, 4012017),
(3,	2,	3,	4012017, 5012017),
(4,	2,	4,	5012017, 5012017),
(5,	4,	5,	5012017, 7012017),
(6,	4,	6,	6012017, 7012017),
(7,	3,	7,	6012017, 7012017),
(8,	2,	8,	6012017, 7012017),
(9,	3,	9,	6012017, 7012017),
(10, 3,	1,	3012017, 4012017),
(11, 4,	2,	3012017, 4012017),
(12, 1,	3,	3012017, 4012017),
(13, 4,	4,	3012017, 4012017),
(14, 4,	5,	3012017, 4012017),
(15, 1,	6,	3012017, 4012017),
(16,	1,	7,	3012017, 4012017),
(17,	1,	8,	3012017, 4012017),
(18,	1,	9,	3012017, 4012017),
(19,	2,	1,	3012017, 4012017),
(20,	2,	1,	4012017, 5012017),
(1,	2,	1,	5012017, 5012017),
(3,	2,	3,	5012017, 7012017),
(5,	2,	1,	6012017, 7012017),
(2,	2,	6,	6012017, 7012017),
(8,	2,	1,	6012017, 7012017),
(19,	3,	7,	1012017, 7012017),
(1,	1,	2,	3012017, 4012017),
(13,	1,	1,	2012017, 4012017),
(14,	4,	8,	3012017, 4012017),
(15,	1,	3,	1012017, 4012017),
(16,	1,	6,	2012017, 4012017),
(17,	4,	6,	3012017, 4012017),
(18,	1,	1,	8012017, 9012017),
(19,	1,	6,	7012017, 10012017),
(1,	3,	3,	9012017, 11012017),
(2,	4,	5,	8012017, 9012017),
(3,	2,	8,	4012017, 5012017),
(4,	3,	4,	5012017, 7012017),
(5,	2,	7,	5012017, 9012017),
(6,	2,	2,	6012017, 11012017),
(7,	2,	4,	6012017, 7012017),
(8,	2,	3,	6012017, 7012017),
(9,	3,	5,	4012017, 7012017),
(10,	1,	7,	1012017, 11012017),
(11,	1,	7,	3012017, 12012017),
(12,	4,	4,	10012017, 4012017),
(13,	1,	3,	1012017, 4012017),
(14,	1,	3,	3012017, 4012017),
(15,	1,	2,	3012017, 4012017),
(16,	1,	1,	3012017, 4012017),
(17,	1,	1,	3012017, 4012017),
(18,	1,	6,	2012017, 4012017),
(19,	2,	7,	3012017, 4012017),
(20,	2,	1,	3012017, 5012017),
(1,	2,	8,	2012017, 3012017),
(3,	2,	1,	5012017, 7012017),
(5,	2,	2,	6012017, 7012017),
(2,	2,	5,	6012017, 7012017),
(8,	2,	1,	6012017, 7012017),
(19,	4,	8,	6012017, 7012017)