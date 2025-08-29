declare
r int;
nb varchar(20);
idate date;
rdate date;
d int;
amt float;
begin
r:=&r;
nb:='&nb';
selcet issudate into idate from bookborrow where rollno=r and nameofbook=nb and status='I';
rdate:=sysdate;
d:=rdate-idate;
dbms_output.put_line(d);
if d<15 then
dbms_output.put_line('No fine');
update bookborrow set status='R' where rollno=r and nameofbook=nb;
elsif d>15 and d<30 then
amt:= d*5;
update bookborrow set status='R' where rollno=r and nameofbook=nb;
elsif d>30 then
amt:= d*50;
update bookborrow set status='R' where rollno=r and nameofbook=nb;
else
dbms_output.put_line('Record not match');
end if;
if amt>0 then
insert into fined values(r,rdate,amt);
end if;
Exception
when no_data_found then
dbms_output.put_line('Record not Found!');
end;
/
