declare
a number(3);
begin
a:=&a;
if mod(a,2)=0 then
dbms_output.put_line('number is even'||a);
else
dbms_output.put_line('number is odd'||a);
end if;
end;
/