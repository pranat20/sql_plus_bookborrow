declare
a number(3);
b number(3);
begin
a:=1;
b:=&b;
while a<=b loop
if mod(a,2)!=0 then
dbms_output.put_line('number is odd'||a);
end if;
a:=a+1;
end loop;
end;
/