declare
r float;
a float;
begin
for r in 5..9 loop
a:=3.14*r*r;
insert into circlearea values(r,a);
end loop;
end;
/