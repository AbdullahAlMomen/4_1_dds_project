
	
set serveroutput on; 
set verify off;

declare 
	bg varchar(20); 
	res number; 
	
begin 
bg:='&enter the blood group';
res := countBagNums(bg);
dbms_output.put_line('Total bags of blood group ' ||bg|| ' = '||res);	
	
end; 
/
