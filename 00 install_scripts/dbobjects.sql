
use openemr; 

CREATE TABLE IF NOT EXISTS hl7events_table (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  EventType varchar(100) NOT NULL,
  PrimaryID int NOT NULL,
  CreatedDateTime datetime DEFAULT NULL,
  UpdatedDateTime datetime DEFAULT NULL,
  PollingStatus varchar(10) DEFAULT '0'
  );

delimiter |  
CREATE TRIGGER HL7_ADT_A04_PATIENT_DATA
	AFTER INSERT ON patient_data
	FOR EACH ROW
BEGIN
	INSERT INTO hl7events_table
    SET EventType = 'ADT_A04', 
        PrimaryID = NEW.pid, 
        CreatedDateTime = NOW(),
        PollingStatus = '1';
END;
|

delimiter |  
CREATE TRIGGER HL7_ADT_A08_PATIENT_DATA
	AFTER UPDATE ON patient_data
	FOR EACH ROW
BEGIN
	INSERT INTO hl7events_table
    SET EventType = 'ADT_A08', 
        PrimaryID = NEW.pid, 
        CreatedDateTime = NOW(),
        PollingStatus = '1';
END;
|