	
	
set serveroutput on; 
set verify off;

declare 
	 ar DONOR.Dbloodgroup%TYPE; 

	
begin 
ar:='&enter the blood group';
searchDonorsByArea(ar);
end; 
/
