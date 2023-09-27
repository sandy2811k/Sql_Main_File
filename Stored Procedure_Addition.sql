
create procedure myproc

@num1 int,
@num2 int,
@result int output
as begin
set @result=@num1+@num2
end 
go
declare @ans int
exec myproc @num1=1,@num2=4,@result=@ans output

select @ans as 'addition'

