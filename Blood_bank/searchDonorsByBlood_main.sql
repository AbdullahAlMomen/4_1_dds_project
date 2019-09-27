	
	
set serveroutput on; 
set verify off;

declare 
	 bg DONOR.Dbloodgroup%TYPE; 

	
begin 
bg:='&enter the blood group';
searchDonorsByBlood(bg);
end; 
/
