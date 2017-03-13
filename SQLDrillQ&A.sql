
CREATE PROC [dbo].[NameCopyPerBanch] @Title nvarchar(50),
@Copies int= NULL,
@Branch nvarchar(50)=NULL
AS
SELECT BT.Title, NC.No_Of_Copies, BN.BranchName
FROM tblBooKS AS BT INNER JOIN tblBook_Copies AS NC
ON  BT.BookId= NC.BookId
INNER JOIN tblLibrary_Branch AS BN
ON NC.BranchId=BN.BranchId

Where BT.Title LIKE '%'+ISNULL(@Title,BT.Title)+'%'
And NC.No_Of_Copies=ISNULL(@Copies,NC.No_Of_Copies)
AND BN.BranchName=ISNULL(@Branch,BN.BranchName)
GO

/*1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?
*/
Exec [dbo].[NameCopyPerBanch] @Title='The Lost Tribe', @Branch='Sharpstown'


--2. How many copies of the book titled The Lost Tribe are owned by each library branch?Exec [dbo].[NameCopyPerBanch] @Title='The Lost Tribe'

--3. Retrieve the names of all borrowers who do not have any books checked out

SELECT B.Name, B.[Address], BL.DateOut, BL.DueDate
FROM [dbo].[tblBorrower] AS B INNER JOIN [dbo].[tblBook_Loans] AS BL
ON  B.CardNo= BL.CardNo

Where BL.DateOut=NULL 

/*4 For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.*/SELECT B.Name, B.[Address], BL.DueDate, BK.Title, BN.BranchName 
FROM [dbo].[tblBook_Loans] AS BL INNER JOIN [dbo].[tblBorrower] AS B
ON  BL.CardNo= B.CardNo
INNER JOIN [dbo].[tblBooKS] AS BK
ON BK.BookId=BL.BookID
INNER JOIN [dbo].[tblLibrary_Branch] AS BN
ON BN.BranchId=BL.BranchId


Where BN.BranchName='Sharpstown' 
AND BL.DueDate=03122017/* 5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.*/SELECT B.BranchName,  COUNT(*) AS #OfBooksFROM [dbo].[tblLibrary_Branch] AS B INNER JOIN [dbo].[tblBook_Loans] AS LON B.BranchId=L.BranchIdGROUP BY BranchName/* 6.Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.NAME, ADDRESS, #BOOKS>5*/SELECT  B.Name, B.[Address], COUNT(BL.CardNo)AS MoreThanFiveFROM [dbo].[tblBook_Loans] AS BL INNER JOIN [dbo].[tblBorrower] AS BON BL.CardNo=B.CardNoGROUP BY Name, B.[Address]HAVING COUNT(*) > 5/* For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central" Author, title, #copies, central*/SELECT BT.Title, NC.No_Of_Copies, BN.BranchName, BK.AuthorName
FROM tblBooKS AS BT INNER JOIN tblBook_Copies AS NC
ON  BT.BookId= NC.BookId
INNER JOIN tblBooks_AUTHOR AS BK
ON BK.BookId= NC.BookId
INNER JOIN tblLibrary_Branch AS BN
ON NC.BranchId=BN.BranchId

WHERE BK.AuthorName = 'Stephen King'
AND  BN.BranchName='Central'

