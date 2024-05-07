GO
Create database DBCURDDEMO

GO
use DBCURDDEMO
GO

Create Table employee
(
ID int IDENTITY(1,1),
EMP_NAME Varchar(50) Not Null,
EMP_EMAIL varchar(50)Not Null,
EMP_MOBILE_NO Varchar(10)Not Null,
EMP_ADDRESS Varchar(100)Not Null,
)

GO

Create Procedure SPAddEMP
(
@ID int,
@EMP_NAME Varchar(50),
@EMP_EMAIL varchar(50),
@EMP_MOBILE_NO Varchar(10),
@EMP_ADDRESS Varchar(100)
)
as 
begin
insert into employee(EMP_NAME,EMP_EMAIL,EMP_MOBILE_NO,EMP_ADDRESS)
values(@EMP_NAME,@EMP_EMAIL,@EMP_MOBILE_NO,@EMP_ADDRESS)
END
GO

Create Procedure SPUPDATEEMP
(
@ID int,
@EMP_NAME Varchar(50),
@EMP_EMAIL varchar(50),
@EMP_MOBILE_NO Varchar(10),
@EMP_ADDRESS Varchar(100)
)
as
Begin 
update employee
set EMP_NAME= @EMP_NAME,
EMP_EMAIL=@EMP_EMAIL, 
EMP_MOBILE_NO=@EMP_MOBILE_NO,
EMP_ADDRESS=@EMP_ADDRESS 
where ID=@ID
END
GO
Create Procedure SPDELETE
(
@ID int
)
as 
begin
Delete from employee where ID=@ID
END

Go
Create Procedure SPGETALLRECORD
as
begin
select * from employee order by ID DESC
END