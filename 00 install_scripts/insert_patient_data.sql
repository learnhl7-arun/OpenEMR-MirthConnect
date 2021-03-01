insert into openemr.patient_data ( 
	pid, pubpid, lname, fname, mname, mothersname,
	DOB, sex, race, street, city,
	state, postal_code, country_code, 
	ss, phone_home, phone_biz, phone_contact, phone_cell
)
(
select id+1000 as ID, CONCAT('MRN',CONVERT(id+1000, CHAR)) as MRN, Surname, Surname, MiddleInitial,  MothersMaiden,
		 STR_TO_DATE( Birthday,'%m/%d/%Y') DOB, Gender, '',  StreetAddress,  City,
          State,  ZipCode,  Country,
           NationalID,  TelephoneNumber, '', '', ''
from persons  where id = 45  
)
;
