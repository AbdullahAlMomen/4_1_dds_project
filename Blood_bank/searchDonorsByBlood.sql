create or replace procedure searchDonorsByBlood(bg in DONOR.Dbloodgroup%TYPE)
		IS
	id Donor.DID%Type;	
	name varchar2(100);
	age DONOR.Dage%TYPE;
	gender varchar2(100);
	bloodGrp varchar2(100);
	area varchar2(100);
	address varchar2(100);
	phonenum varchar2(100);
	elgib varchar2(100);
	
	cursor donorbygroup is
	select * from DONOR
	where Dbloodgroup = bg;
	
	
	
begin  


DBMS_OUTPUT.PUT_LINE('DID'||' -- '||'Name'||' -- ' || 'Age'||' -- ' || 'Gender' ||' -- '|| 'Blood Group'||' -- '|| 'Area' ||' -- '|| 'Address' ||' -- '|| 'Phone Number' ||' -- '|| 'Eligibility');
	
open donorbygroup;
	
	loop
		fetch donorbygroup into id,name,age,gender,bloodGrp,area,address,phonenum,elgib;
		
		exit when donorbygroup%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(id)||' -- '|| name ||' -- '|| TO_CHAR(age)||' -- '||gender||' -- '|| bloodGrp||' -- '||area||' -- '||address||' -- '||phonenum || ' -- ' || elgib);
		
	end loop;
close donorbygroup;
		 
end searchDonorsByBlood;
/
