


	
set serveroutput on; 
set verify off;

declare 
	givenDate DONATION_DETAILS.givenat%TYPE; 
	id DONOR.DID%TYPE; 
	
begin 
id:=&id;
givenDate := SYSDATE;
isEligible(id,givenDate);
	
end; 
/



