CREATE TRIGGER [dbo] InstedExample
ON {DailyReport }
INSTEAD OF {INSERT }
AS
BEGIN
SET NOCOUNT ON 
insert into OrderTable values (OrderId,Amount,111,AccountNo,10,convert(varchar, getdate(), 6));
from inserted i
where i.OrderId NOT IN(SELECT OrderId from OrderTable);


END


insert into DailyReport values(8003,'Apurva',10000);