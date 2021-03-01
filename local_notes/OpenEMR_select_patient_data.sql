select 
	id, pid, pubpid, lname, fname, mname, mothersname,
	DOB, sex, race, street, city,
	state, postal_code, country_code, 
	ss, phone_home, phone_biz, phone_contact, phone_cell
from openemr.patient_data
where pubpid = 'MRN028'
