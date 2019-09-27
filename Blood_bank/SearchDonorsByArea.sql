create or replace procedure searchDonorsByArea(matchArea in DONOR.Darea%TYPE)
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
	
	
   cursor donorbyarea is
	select * from DONOR
	where Darea = matchArea;
	
 begin	
	
	DBMS_OUTPUT.PUT_LINE('DID'||' -- '||'Name'||' -- ' || 'Age'||' -- ' || 'Gender' ||' -- '|| 'Blood Group'||' -- '|| 'Area' ||' -- '|| 'Address' ||' -- '|| 'Phone Number' ||' -- '|| 'Eligibility');
	
	open donorbyarea;
	loop
		fetch donorbyarea into id,name,age,gender,bloodGrp,area,address,phonenum,elgib;
		
		exit when donorbyarea%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(id)||' -- '|| name ||' -- '|| TO_CHAR(age)||' -- '||gender||' -- '|| bloodGrp||' -- '||area||' -- '||address||' -- '||phonenum || ' -- ' || elgib);
		
	end loop;
	close donorbyarea;
			 
end searchDonorsByArea;
/

	