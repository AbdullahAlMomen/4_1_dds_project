	create or replace procedure searchDonorsByArea(matchArea in DONOR.Darea%TYPE)
		IS
    id Donor.DID%Type;	
	name Donor.Dname%TYPE;
	age DONOR.Dage%TYPE;
	gender Donor.Dgender%TYPE;
	bloodGrp Donor.Dbloodgroup%TYPE;
	area Donor.Darea%TYPE;
	address Donor.Daddress%TYPE;
	phonenum Donor.Dphonenum%TYPE;
	elgib Donor.Deligibility%TYPE;
	
	
   cursor donorbyarea is
	select did, dname, dage, dgender, dbloodgroup, darea, daddress, dphonenum, Deligibility from DONOR
	where Darea = matchArea;
	
 begin	
	
	DBMS_OUTPUT.PUT_LINE('DID -- Name -- Age -- Gender -- Blood Group -- Area -- Address -- Phone Number -- Eligibility');
	
	open donorbyarea;
	loop
		
		fetch donorbyarea into id,name,age,gender,bloodGrp,area,address,phonenum,elgib;
		
		exit when donorbyarea%notfound;
		
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(id)||' -- '|| name ||' -- '|| TO_CHAR(age)||' -- '||gender||' -- '|| bloodGrp||' -- '||area||' -- '||address||' -- '||phonenum || ' -- ' || elgib);
		
	end loop;
	close donorbyarea;
			 
end searchDonorsByArea;
/

	
