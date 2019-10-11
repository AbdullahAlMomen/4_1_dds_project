set serveroutput on; 
set verify off;
declare 
    id   Donor.Did%TYPE;
    name Donor.Dname%TYPE;
	bloodGrp Donor.Dbloodgroup%TYPE;
	area Donor.Darea%TYPE;
	phonenum Donor.Dphonenum%TYPE;
	elgib Donor.Deligibility%TYPE;
	age   Donor.Dage%TYPE;
	gender Donor.Dgender%TYPE;
	address Donor.Daddress%TYPE;

	
begin

name := '&name';
age := '&age';
gender := '&gender';
bloodGrp := '&bloodGrp';
area := '&area';
address := '&address';
phonenum := '&phonenum';
elgib := '&elgib';

DBMS_OUTPUT.PUT_LINE('Name'||' -- ' || 'Age'||' -- ' || 'Gender' ||' -- '|| 'Blood Group'||' -- '|| 'Area' ||' -- '|| 'Address' ||' -- '|| 'Phone Number');
DBMS_OUTPUT.PUT_LINE( name ||' -- '|| TO_CHAR(age)||' -- '||gender||' -- '|| bloodGrp||' -- '||area||' -- '||address||' -- '||phonenum);
insert into DONOR values(donor_sequence.nextval,name,age,gender,bloodGrp,area,address,phonenum,elgib);

end; 
/


