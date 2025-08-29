declare
a number(3);
b number(3);
begin
a:=&a;
b:=&b;
if a >b then
dbms_output.put_line('Greater number is'||a);
elsif b>a then
dbms_output.put_line('Greater number is'||b);
else
dbms_output.put_line('Both numbers are equal');
end if;
end;
/