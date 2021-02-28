# Using Mirth Connect as interface Engine for OpenEMR
**OpenEMR** is an open-source electronic medical record and practice management software. 
https://www.open-emr.org/
This project uses Stable Production Release (Version 6.0.0)

**MirthConnect** (NextGen® Connect Integration Engine)is an open source cross-platform HL7 interface engine that enables bi-directional sending of HL7 messages between systems and applications over multiple transports.https://www.nextgen.com/products-and-services/integration-engine

The goal of this project is to have Channels in MirthConnect to make OpenEMR 
- Send messages for ADT, Orders
- Receive Results
- Receive Vitals

We shall be using Folders as Input/Output of MirthConnect. 

### Prerequisites
You will need the following 
1. OpenEMR requires Webserver (Apache), Database and PHP. You can use a stack of your choice. 
   - For Windows you can use XAMPP without DB. Read next point on database.
   - For MAC, reccomed to use a Docker image   

2. Database: We have used MySQL as the database. 
   > Note for XAMPP users: XAMPP contains MariaDB database. At the time of writing this file, there are various issues in connecting MirthConnect with MariaDB. Hence it is reccomended to use MySQL server

3. Mirth Connect: Mirth Connect Server 3.10.1 and above. 
   > Mirth Connect requires Java SE 8. https://www.oracle.com/in/java/technologies/javase/javase8-archive-downloads.html

## Getting Started
The subfolders in this repository are numbered. 
Each subfolder is an independent channel that can be deployed individually. 
Within each subfolder lookout for the required Database, Folder and other pre-requisites.  
